job('seed_job') {
  scm {
    git {
      remote {
        url('https://github.com/Fat-Frumos/Lab.git')
      }
      branch('module#03')
    }
  }
  steps {
    dsl {
      external('job.groovy')
    }
  }
}