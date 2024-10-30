# dojo-php-30-10-2024

## Install

Run the command below to install the dependencies:

```bash
make composer-install
```

## Run

Start docker containers:

```bash
make dc-up 
```

## Test

Run the command below to run the tests:

```bash
make test
```

If new file is added to the project, run the command below to generate the coverage:

```bash
make composer-dump-autoload
```
