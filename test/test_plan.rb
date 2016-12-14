test do
  defaults domain: 'https://national-parks-app.herokuapp.com/'

  view_results_tree
  summary_report
  # threads(options) do ...
end.run(gui: true)
