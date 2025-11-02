1. What’s the difference between artifact and cache?
The main difference between a cache and an artifact is the following:
A cache is something that you want to store across multiple pipeline runs. 
For example, installed dependencies. The idea is to download the dependencies in a pipeline run, and then reuse those in other runs afterwards (to reduce pipeline time spent downloading).

An artifact is something that you want to persist across multiple steps, in a single pipeline run. For example, if you've built and tested a binary in one step, and you want to have deployment steps afterwards. Then you're deploying the same object that you've already tested (rather than recreating it).

2. What is a “manual job”?
A "manual job" in GitLab CI is a job in a CI/CD pipeline that requires a user to click a button to start it, rather than running automatically like other jobs. It is used for tasks like deploying to production or running a critical script that needs human approval or oversight before execution.

3. How do variables differ from parameters?
In GitLab CI, variables are key-value pairs for storing configuration settings and sensitive data, while parameters (GitLab's newer CI/CD inputs) are for defining a typed, validated, and static set of inputs when a pipeline is triggered. Variables are more flexible and can be modified at runtime, whereas parameters are fixed for the duration of the pipeline run and are primarily for reusable components or templates.
