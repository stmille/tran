#linux variables
JAVAHOME=/usr/local/jdk1.1.5
CLASSPATH=.:$(JAVAHOME)/lib:$(JAVAHOME)/lib/classes.zip

JAVAC=javac
JFLAGS=

.SUFFIXES: .java .class

.java.class:
	$(JAVAC) -classpath $(CLASSPATH) $(JFLAGS) $<

CLASSES=\
   Complex.class\
   Dstring.class\
   GenLine.class\
   SimpleLine.class\
   TEMLine.class\
   Tran.class\
   TranWindow.class\
   ZPlot.class\
   ptplot/KSPlotBoxNS.class\
   ptplot/KSPlotNS.class\
   ptplot/PlotPoint.class\
   AppletButton.class

SRCFILES=\
   Complex.java\
   Dstring.java\
   GenLine.java\
   SimpleLine.java\
   TEMLine.java\
   Tran.java\
   TranWindow.java\
   ptplot/KSPlotBoxNS.java\
   ptplot/KSPlotNS.java\
   ptplot/PlotPoint.java\
   AppletButton.java


all: $(CLASSES)
	

clean:
	rm -f *.class ptplot/*.class tran.zip transrc.zip

zipfile: $(CLASSES)
	zip tran.zip $(CLASSES) ptplot/*.class

srczipfile: $(SRCFILES) README copying Makefile
	zip transrc.zip README copying Makefile $(SRCFILES)
