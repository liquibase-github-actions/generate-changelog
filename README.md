# Liquibase Generate Changelog Action
Official GitHub Action to run Liquibase Generate Changelog in your GitHub Action Workflow. For more information on how generate changelog works visit the [Official Liquibase Documentation](https://docs.liquibase.com/commands/home.html).
## Generate Changelog
Generate a changelog
## Usage
```yaml
steps:
- uses: actions/checkout@v3
- uses: liquibase-github-actions/generate-changelog@v4.21.1
  with:
    # The JDBC database connection URL
    # string
    # Required
    url: ""

    # 
    # string
    # Optional
    author: ""

    # Changelog file to write results
    # string
    # Optional
    changelogFile: ""

    # 
    # string
    # Optional
    compareControl: ""

    # 
    # string
    # Optional
    context: ""

    # Directory to write table data to
    # string
    # Optional
    dataOutputDirectory: ""

    # 
    # string
    # Optional
    database: ""

    # The default catalog name to use for the database connection
    # string
    # Optional
    defaultCatalogName: ""

    # The default schema name to use for the database connection
    # string
    # Optional
    defaultSchemaName: ""

    # Types of objects to compare
    # string
    # Optional
    diffTypes: ""

    # The JDBC driver class
    # string
    # Optional
    driver: ""

    # The JDBC driver properties file
    # string
    # Optional
    driverPropertiesFile: ""

    # Objects to exclude from diff
    # string
    # Optional
    excludeObjects: ""

    # Output format. Default: TXT
    # string
    # Optional
    format: ""

    # If true, the catalog will be included in generated changeSets. Defaults to false.
    # bool
    # Optional
    includeCatalog: ""

    # Objects to include in diff
    # string
    # Optional
    includeObjects: ""

    # If true, the schema will be included in generated changeSets. Defaults to false.
    # bool
    # Optional
    includeSchema: ""

    # Include the tablespace attribute in the changelog. Defaults to false.
    # bool
    # Optional
    includeTablespace: ""

    # 
    # string
    # Optional
    objectChangeFilter: ""

    # Output schemas names. This is a CSV list.
    # string
    # Optional
    outputSchemas: ""

    # Flag to allow overwriting of output changelog file. Default: false
    # bool
    # Optional
    overwriteOutputFile: ""

    # Password to use to connect to the database
    # string
    # Optional
    password: ""

    # 
    # string
    # Optional
    referenceDatabase: ""

    # 
    # string
    # Optional
    referenceDefaultCatalogName: ""

    # 
    # string
    # Optional
    referenceDefaultSchemaName: ""

    # 
    # string
    # Optional
    referenceDriver: ""

    # 
    # string
    # Optional
    referenceDriverPropertiesFile: ""

    # 
    # string
    # Optional
    referencePassword: ""

    # 
    # string
    # Optional
    referenceSchemas: ""

    # 
    # string
    # Optional
    referenceSnapshotControl: ""

    # 
    # string
    # Optional
    referenceUrl: ""

    # 
    # string
    # Optional
    referenceUsername: ""

    # Schemas to include in diff
    # string
    # Optional
    schemas: ""

    # 
    # bool
    # Optional
    skipDatabaseStep: ""

    # 
    # string
    # Optional
    snapshotListener: ""

    # 
    # string
    # Optional
    snapshotTypes: ""

    # 
    # string
    # Optional
    targetSnapshotControl: ""

    # Username to use to connect to the database
    # string
    # Optional
    username: ""

```

### Secrets
It is a good practice to protect your database credentials with [GitHub Secrets](https://docs.github.com/en/actions/security-guides/encrypted-secrets)

## Optional Liquibase Global Inputs
The liquibase generate changelog action accepts all valid liquibase global options as optional parameters. A full list is available in the official [Liquibase Documentation](https://docs.liquibase.com/parameters/command-parameters.html).

### Example
```yaml
steps:
  - uses: actions/checkout@v3
  - uses: liquibase-github-actions/generate-changelog@v4.21.1
    with:
      url: ""
      headless: true
      licenseKey: ${{ secrets.LIQUIBASE_LICENSE_KEY }}
      logLevel: INFO
```

## Feedback and Issues
This action is automatically generated. Please submit all feedback and issues with the [generator repository](https://github.com/liquibase/github-action-generator/issues).
