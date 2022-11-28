classdef tAddThem < matlab.unittest.TestCase

    methods (TestClassSetup)
        function throwStartDiagnostic(testCase)
            disp(['Running the test: ' class(testCase)]);
            oldPath = addpath('..\code');
            testCase.addTeardown(@()path(oldPath));
        end
    end

    methods (Test)
        % Test methods

        function verifySumPositive(testCase)
            actualSum = addThem(20, 20);
            expectedSum = 40;
            testCase.verifyEqual(actualSum, expectedSum, 'Value of actual and expected sum do not match');
        end
    end

end