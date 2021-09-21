# Configure TypeScript

Add TypeScript as a dev dependency

```bash
npm install typescript --save-dev
```# Configure TypeScript

Add TypeScript as a dev dependency

```bash
npm install typescript --save-dev
```

Install ambient Node.js types for TypeScript

```bash
npm install @types/node --save-dev
```

Create a `tsconfig.json` file

```json
{
  "compilerOptions": {
    "target": "es6",
    "lib": ["es6"],
    "module": "commonjs",
    "rootDir": null,
    "moduleResolution": "node",
    "resolveJsonModule": true,
    "allowJs": true,
    "outDir": null,
    "esModuleInterop": true,
    "forceConsistentCasingInFileNames": true,
    "strict": true,
    "noImplicitAny": true,
    "skipLibCheck": true
  },
  "exclude": [],
  "include": ["/*"]
}
```

## Compiling TypeScript code

```bash
npx tsc
```

## Running TypeScript code

Install `ts-node`:

```bash
npm install --save-dev ts-node
```

Run TypeScript file:

```bash
npx ts-node file.ts
```

## Linting

Setup ESLint in your TypeScript project:

```bash
npm install --save-dev eslint @typescript-eslint/parser @typescript-eslint/eslint-plugin
```

Create an `.eslintrc` file:

```json
{
  "root": true,
  "parser": "@typescript-eslint/parser",
  "plugins": ["@typescript-eslint"],
  "extends": [
    "eslint:recommended",
    "plugin:@typescript-eslint/eslint-recommended",
    "plugin:@typescript-eslint/recommended"
  ]
}
```

Create an `.eslintignore` in order to prevent ESLint from linting stuff we don't want it to lint:

```bash
node_modules
dist
```

Add a lint script in `package.json` file:

```json
{
  "scripts": {
    ...
    "lint": "eslint . --ext .ts",
  }
}
```

Run the linter:

```bash
npm run lint
```

## Jest

Install Jest:

```bash
npm install --save-dev jest
```

Install types for Jest:

```bash
npm install --save-dev @types/jest
```

Install runner for Jest tests written with TypeScript:

```bash
npm install --save-dev ts-jest
```

Tell `Jest` that we want to use `ts-test` as a preprocessor. Add `jest.config.js` file:

```js
module.exports = {
  preset: "ts-jest",
  testEnvironment: "node",
  roots: ["./src"],
  testMatch: [
    "**/__tests__/**/*.+(ts|tsx|js)",
    "**/?(*.)+(spec|test).+(ts|tsx|js)",
  ],
  transform: {
    "^.+\\.(ts|tsx)$": "ts-jest",
  },
};
```

### Running Jest tests

```bash
npx ts-node my.test.ts
```


Install ambient Node.js types for TypeScript

```bash
npm install @types/node --save-dev
```

Create a `tsconfig.json` file

```json
{
  "compilerOptions": {
    "target": "es6",
    "lib": ["es6"],
    "module": "commonjs",
    "rootDir": null,
    "moduleResolution": "node",
    "resolveJsonModule": true,
    "allowJs": true,
    "outDir": null,
    "esModuleInterop": true,
    "forceConsistentCasingInFileNames": true,
    "strict": true,
    "noImplicitAny": true,
    "skipLibCheck": true
  },
  "exclude": [],
  "include": ["/*"]
}
```

## Compiling TypeScript code

```bash
npx tsc
```

## Running TypeScript code

Install `ts-node`:

```bash
npm install --save-dev ts-node
```

Run TypeScript file:

```bash
npx ts-node file.ts
```

## Linting

Setup ESLint in your TypeScript project:

```bash
npm install --save-dev eslint @typescript-eslint/parser @typescript-eslint/eslint-plugin
```

Create an `.eslintrc` file:

```json
{
  "root": true,
  "parser": "@typescript-eslint/parser",
  "plugins": ["@typescript-eslint"],
  "extends": [
    "eslint:recommended",
    "plugin:@typescript-eslint/eslint-recommended",
    "plugin:@typescript-eslint/recommended"
  ]
}
```

Create an `.eslintignore` in order to prevent ESLint from linting stuff we don't want it to lint:

```bash
node_modules
dist
```

Add a lint script in `package.json` file:

```json
{
  "scripts": {
    ...
    "lint": "eslint . --ext .ts",
  }
}
```

Run the linter:

```bash
npm run lint
```

## Jest

Install Jest:

```bash
npm install --save-dev jest
```

Install types for Jest:

```bash
npm install --save-dev @types/jest
```

Install runner for Jest tests written with TypeScript:

```bash
npm install --save-dev ts-jest
```

Tell `Jest` that we want to use `ts-test` as a preprocessor. Add `jest.config.js` file:

```js
module.exports = {
  preset: "ts-jest",
  testEnvironment: "node",
  roots: ["./src"],
  testMatch: [
    "**/__tests__/**/*.+(ts|tsx|js)",
    "**/?(*.)+(spec|test).+(ts|tsx|js)",
  ],
  transform: {
    "^.+\\.(ts|tsx)$": "ts-jest",
  },
};
```

### Running Jest tests

```bash
npx ts-node my.test.ts
```
