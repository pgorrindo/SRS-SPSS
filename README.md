SRS-SPSS
========


## Synopsis

The Social Responsiveness Scale (SRS) is an instrument used in research and clinical care for individuals with autism spectrum disorder that was developed by [John N. Constantino, MD](http://www.psychiatry.wustl.edu/c/Faculty/FacultyDetails.aspx?ID=278). 

As described by the publisher ([WPS](http://portal.wpspublish.com/portal/page?_pageid=53,70492&_dad=portal&_schema=PORTAL)):

> "This 65-item rating scale measures the severity of autism spectrum symptoms as they occur in natural social settings.
> Completed by a parent or teacher in just 15 to 20 minutes, the SRS provides a clear picture of a child's social impairments, 
> assessing social awareness, social information processing, capacity for reciprocal social communication, social anxiety/avoidance, 
> and autistic preoccupations and traits. It is appropriate for use with children from 4 to 18 years of age."

[This Git repository](https://github.com/pgorrindo/SRS-SPSS.git) contains code to score the 2005 Parent AutoScore version of the SRS (catalog #W-399AP at [WPS](http://portal.wpspublish.com/portal/page?_pageid=53,70492&_dad=portal&_schema=PORTAL)) using IBM's SPSS statistical program, generating final T Scores for individual cases from raw parent-reported responses.

This code was written by Phillip Gorrindo (pgorrindo.github@gorrindo.com) and tested using SPSS version 19. If you find an error, please let me know. Please use this code at your own risk. I can't guarantee that I'll be able to help you troubleshoot if a problem comes up. A version of this code has been used in analysis of data that has been published after peer-review (i.e. [here](http://gorrindo.com/phillip/professional-portfolio/2012/04/gastrointestinal-dysfunction-in-autism-parental-report-clinical-evaluation-and-associated-factors.html)).


## How To

For input, this code takes in the SPSS-formatted output from a [REDCap](http://www.project-redcap.org) database export.

For output, this code generates a final variable (i.e. `srs_t_tot_calc`) with a T Score for each case in the dataset.

This code will calculate a raw score based on individual item scores, but also allows for a manual (i.e. using the AutoScore form) raw score, and will check the two against each other for concordance.

This code expects some variables (i.e. `sex`, etc), which your database may not have; please consider this code as the starting point on which you can build. Most likely, you will need to modify this code to work for your particular dataset.


## License

This is free and unencumbered software released into the public domain. [Full license here](https://github.com/pgorrindo/SRS-SPSS/blob/master/UNLICENSE). For more information, please refer to [unlicense.org](http://unlicense.org/).

