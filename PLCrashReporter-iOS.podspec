Pod::Spec.new do |s|
  s.name         = "PLCrashReporter-iOS"
  s.version      = "1.1"
  s.summary      = "An in-process crash reporting framework."

  s.description  = <<-DESC
					PLCrashReporter powers most of the crash reporting services available for iOS, including HockeyApp, Atlassian JMC, and Flurry.

					Features
					* Uses only supported and public APIs/ABIs for crash reporting.
					* First released in 2008, and used in thousands of apps. PLCrashReporter has seen a tremendous amount of user testing.
					* Backtraces for all active threads are provided.
					* Handles both uncaught Objective-C exceptions and fatal signals (SIGSEGV, SIGBUS, etc)
					* Does not interfere with debugging in lldb/gdb
					* Easy to integrate with existing or custom crash reporting services.
					* Provides full register state for the crashed thread.

                   DESC

  s.homepage     = "https://www.plcrashreporter.org/"
  s.license      = { :type => 'Custom', :file => './LICENSE' }
  s.author       = 'Plausible Labs'

  s.platform = :ios

  s.frameworks = 'CrashReporter'

  s.source       = { :git => "https://github.com/egistli/PLCrashReporter-iOS.git", :tag => "1.1"}
  s.source_files  = '1.1/CrashReporter.framework/Versions/A/Headers/*.h'
  s.preserve_paths = "1.1/CrashReporter.framework"

end
