require 'test_helper'

class ReportsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @report = reports(:one)
  end

  test "should get index" do
    get reports_url
    assert_response :success
  end

  test "should get new" do
    get new_report_url
    assert_response :success
  end

  test "should create report" do
    assert_difference('Report.count') do
      post reports_url, params: { report: { centre_no: @report.centre_no, emis: @report.emis, passed_2014: @report.passed_2014, passed_2015: @report.passed_2015, passed_2016: @report.passed_2016, school_name: @report.school_name, wrote_2014: @report.wrote_2014, wrote_2015: @report.wrote_2015, wrote_2016: @report.wrote_2016 } }
    end

    assert_redirected_to report_url(Report.last)
  end

  test "should show report" do
    get report_url(@report)
    assert_response :success
  end

  test "should get edit" do
    get edit_report_url(@report)
    assert_response :success
  end

  test "should update report" do
    patch report_url(@report), params: { report: { centre_no: @report.centre_no, emis: @report.emis, passed_2014: @report.passed_2014, passed_2015: @report.passed_2015, passed_2016: @report.passed_2016, school_name: @report.school_name, wrote_2014: @report.wrote_2014, wrote_2015: @report.wrote_2015, wrote_2016: @report.wrote_2016 } }
    assert_redirected_to report_url(@report)
  end

  test "should destroy report" do
    assert_difference('Report.count', -1) do
      delete report_url(@report)
    end

    assert_redirected_to reports_url
  end
end
