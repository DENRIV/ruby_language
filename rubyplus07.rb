# plot

require 'gnuplot'
 
class DemosController 
 
  def index
 
    # tryout gnuplot
    Gnuplot.open do |gp|
      Gnuplot::Plot.new( gp ) do |plot|
 
        #plot.output "plotgnu.pdf"

        plot.xrange "[-10:10]"
        plot.title  "Sin Wave Example"
        plot.ylabel "x"
        plot.xlabel "sin(x)"
 
        plot.data << Gnuplot::DataSet.new( "sin(x)" ) do |ds|
          ds.with = "lines"
          ds.linewidth = 4
        end
 
      end
 
    end
 
 
    #respond_to do |format|
    #  print "format"
    #  format.html # index.html.erb
    #end
  end
 
end

# Object
a = DemosController.new()
a.index()