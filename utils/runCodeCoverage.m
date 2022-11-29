suite = testsuite('test');

import matlab.unittest.plugins.CodeCoveragePlugin
import matlab.unittest.plugins.codecoverage.CoverageReport
runner = testrunner("textoutput");
sourceCodeFolder = "code";
reportFolder = "coverageReport-html";
reportFormat = CoverageReport(reportFolder);
p = CodeCoveragePlugin.forFolder(sourceCodeFolder,"Producing",reportFormat);
runner.addPlugin(p)

% runner.addPlugin(CodeCoveragePlugin.forFile("QuadraticPolynomial.m","Producing",reportFormat))

results = runner.run(suite);
