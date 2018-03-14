# DBQueryBenchmarker
A tool to benchmark SQL queries from Pharo.

## Install
To install this project in your Pharo image, use the following script:
```
Metacello new
    baseline: 'DBQueryBenchmarker';
    repository: 'github://juliendelplanque/DBQueryBenchmarker/repository';
    load
```

## Usage
The following script shows an example of how to use this project:
```
connection := DBConnectionsManager current connectionNamed: 'MyDatabaseConnection'.

"Get the time a query took to be run on the database."
connection timeToRun: 'SELECT * FROM people;'.

"Run the same query 100 times and collect the time each step took to be run.
These results could be use for statistical analysis of the time a query takes
to be run."
connection benchmark: 'SELECT * FROM people;' forSteps: 100.
```
