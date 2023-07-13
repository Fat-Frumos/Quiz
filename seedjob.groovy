job('seed_job') {
  scm {
    git {
      remote {
        url('https://github.com/Fat-Frumos/Lab.git')
      }
      branch('master')
    }
  }
  steps {
    dsl {
      external('job.groovy')
    }
  }
}