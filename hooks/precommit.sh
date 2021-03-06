# if any command inside script returns error, exit and return that error 
set -e
CI=true

# magic line to ensure that we're always inside the root of our application,
cd "${0%/*}/../.."

# Know what it is you're committing
echo "Changes to be committed"
git status -s

# frontend checks
echo "\nFRONTEND"
cd frontend
echo "+ lint frontend"
npm run --silent lint:fix

echo "+ check typescript types"
npm run --silent typecheck

echo "+ unit test frontend"
npm run --silent test:ci

echo "\nBACKEND"
cd ../backend

echo "+ fix and check python style"
black -q . 

echo "+ lint backend"
pylint -sn backend

echo "+ unit test backend"
coverage run
coverage report --fail-under 80