class UserActivity

  attr_reader :list

  def initialize(email)
    @list = {
      analysis_performed: 10,
      custom_audience_created: 3,
      analysis_exported: 0,
      report_downloaded: 7
    }
  end

end
