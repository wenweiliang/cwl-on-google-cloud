# cwl-on-google-cloud
 Attempts for running cwl workflow on google cloud

### Runing cwl workflow by using Rabix

`worklog`: How to create google cloud instance manually and run job by using `start.sh`

`start.sh`: Every instance create by disk snapshot will run this script automatically. 

### Running cwl workflow by using cromwell

1. `conda install cromwell`

2. Run `samtool mpileup` in a cwl workflow `s2_run_varscan.wwl.cwl`

3. `input_s1.yml`: Input yaml. Noted that I was using `StrelkaDemo` from `tin-daisy` for my reference genome.
