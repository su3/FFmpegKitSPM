# How to Build FFmpeg-kit for SPM

1. Build based on the FFmpeg-kit project from https://github.com/arthenica/ffmpeg-kit, using the current version 6.0.

2. Refer to the documentation at https://github.com/arthenica/ffmpeg-kit/tree/main/apple for guidance.
In your temporary project, use the following line in your Podfile: `'ffmpeg-kit-ios-full', '~> 6.0'` After building, you will find 7 XCFramework files in the project directory.

3. Import all XCFramework files into your Swift Package Manager (SPM) project.