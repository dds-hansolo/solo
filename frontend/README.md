## SOLO frontend

This react app is the frontend to the System for Operational Logistics Orders (SOLO)

### Setup Development Environment

1. (recommended) [install node version manager](https://github.com/nvm-sh/nvm)
2. Install the latest LTS version of node
    - `nvm ls-remote`
    - `nvm install X.X.X`
3. Install dependencies
    - `npm install`


### Available Scripts
  - `npm install` Install dependencies: 
  - `npm run start` Run local development server
  - `npm run test` Run tests
      - `npm run test:watch` Run tests on filesystem changes
      - `npm run test:coverage` Run tests and collect code coverage
  - `npm run lint` Lint
      - `npm run lint:fix` Autofix linting
  - `npm run typecheck` Type-check
  - `npm run build` Create production build
  - `docker build .` Build production app into nginx container (requires docker installed)
