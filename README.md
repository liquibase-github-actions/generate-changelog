# Liquibase Generate Changelog Action

⚠️ **VERSION SUPPORT NOTICE**: This action will continue to be supported for Liquibase 4.x. Starting with Liquibase 5.x, it will no longer be supported. 

**Migration to [`liquibase/setup-liquibase`](https://github.com/liquibase/setup-liquibase)**: Available for Liquibase versions 4.32.0 and above. If you're using an older version, upgrade your Liquibase version first.

## Migration Guide

### Current Approach (Liquibase 4.x)
```yaml
- uses: liquibase-github-actions/generate-changelog@v4.33.0
  with:
    # your parameters here
```

### Recommended Approach (Liquibase 4.32.0+)
```yaml
- uses: liquibase/setup-liquibase@v1
  with:
    version: '4.33.0'  # Requires 4.32.0 or higher
    edition: 'oss'
- run: liquibase generate-changelog # add your parameters as CLI flags
```

### Migration Steps
1. **Check your Liquibase version**: Ensure you're using 4.32.0 or higher
2. **If using older version**: Update to 4.32.0+ first using the current micro actions
3. **Then migrate**: Switch to setup-liquibase action

---

Official GitHub Action to run Liquibase Generate Changelog in your GitHub Action Workflow. For more information on how generate changelog works visit the [Official Liquibase Documentation](https://docs.liquibase.com/commands/home.html).
## Generate Changelog
Generate a changelog
## Usage
```yaml
steps:
- uses: actions/checkout@v3
- uses: liquibase-github-actions/generate-changelog@v4.33.0
  with:
    # The JDBC database connection URL
    # string
    # Required
    url: ""

    # Specifies the author for changesets in the generated changelog
    # string
    # Optional
    author: ""

    # Changelog file to write results
    # string
    # Optional
    changelogFile: ""

    # Changeset contexts to generate
    # string
    # Optional
    contextFilter: ""

    # Specifies a directory to send the loadData output of a diff-changelog/generate-changelog command as a CSV file.
    # string
    # Optional
    dataOutputDirectory: ""

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

    # Objects to exclude from diff. Supports regular expressions. Defaults to null.
    # string
    # Optional
    excludeObjects: ""

    # If true, diff operations will ignore referenced objects which are not found in a snapshot.
    # bool
    # Optional
    ignoreMissingReferences: ""

    # If true, the catalog will be included in generated changeSets. Defaults to false.
    # bool
    # Optional
    includeCatalog: ""

    # Objects to include in diff. Supports regular expressions. Defaults to null.
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

    # Changeset labels to generate
    # string
    # Optional
    labelFilter: ""

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

    # Sets replaceIfExists="true" for changes of these types (supported types: createProcedure, createView)
    # string
    # Optional
    replaceIfExistsTypes: ""

    # Sets runOnChange="true" for changesets containing solely changes of these types (e. g. createView, createProcedure, ...).
    # string
    # Optional
    runOnChangeTypes: ""

    # Schemas to include in diff
    # string
    # Optional
    schemas: ""

    # When true will skip object sorting. This can be useful on databases that have a lot of packages/procedures that are linked to each other
    # bool
    # Optional
    skipObjectSorting: ""

    # If true, will add "OR REPLACE" option to the create view change object
    # bool
    # Optional
    useOrReplaceOption: ""

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
  - uses: liquibase-github-actions/generate-changelog@v4.33.0
    with:
      url: ""
      headless: true
      licenseKey: ${{ secrets.LIQUIBASE_LICENSE_KEY }}
      logLevel: INFO
```

## Feedback and Issues
This action is automatically generated. Please submit all feedback and issues with the [generator repository](https://github.com/liquibase/github-action-generator/issues).
