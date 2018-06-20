class: CommandLineTool
cwlVersion: v1.0
id: s2_run_varscan
baseCommand:
  - samtools
  - mpileup
inputs:
  - id: normal_bam
    type: File
    inputBinding:
      position: 3
    secondaryFiles:
      - .bai
  - id: reference_fasta
    type: File
    inputBinding:
      position: 2
      prefix: '-f'
    secondaryFiles:
      - .fai
      - ^.dict
outputs:
  - id: varscan_snv_raw
    type: File
    outputBinding:
      glob: test.txt
label: s2_run_varscan
arguments:
  - position: 0
    prefix: '-q'
    valueFrom: '1'
  - position: 1
    prefix: '-Q'
    valueFrom: '13'
  - position: 4
    prefix: '-o'
    valueFrom: 'test.txt' 
requirements:
  - class: ShellCommandRequirement
  - class: DockerRequirement
    dockerPull: 'wenwiliang/pindel'
