# Information
After build and execution the database admin console is accessible via (http://localhost:8081/)

## Data import/exports

For data import/exports you can use [Mongo Database Tools](https://www.mongodb.com/try/download/database-tools)

## Example of CSV import from host machine

This example expects first line of CSV file to be headers, hence `--headerline`

```
.\mongoimport --db [database name here] --collection [collection name here] --type=csv --headerline --file "[file path here]" --uri=mongodb://localhost:27017 --username=root --password=Password3000!! --authenticationDatabase=admin

```