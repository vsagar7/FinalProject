# FinalProject
Project-coneverted.pdf contains all the commands and the screen shots required for the project.

Project is done 9 stages
1st Stage: Creating the data using python scripts(Generating the mobile data in text and web data in xml format)

2nd stage: Starting required services for the project Using start-daemons.sh(batch id variable used in almost every script for iteration and starting hadoop hbase and sql services)

3rd Stage: Populate lookup data using populate-lookup.sh(From the look up files loading the data in hbase)

4th stage: Formatting the data using dataformatting.sh(converting xml format into csv using pig script and loading the files generated from mob and web into formatted table)

5th stage: Replication the hbase data into hive(Loading the hive data from hbase)

6th stage: Enriching the data using dataenrichment.sh(Cleaning and conditions for data enrichment)

7th Stage data analysis using data_analysis.sh(5 uses cases)

8th stage:Tables in mysql in project database (Exporting the data from hive to MySQL)

9th Stage:Scheduling the crontab(Scheduling crontab for further iterations)

