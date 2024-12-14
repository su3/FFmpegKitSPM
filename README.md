# FFmpegKit for SPM

This is a Swift Package Manager (SPM) wrapper for the FFmpegKit library, which provides a comprehensive FFmpeg development package for iOS, tvOS, and macOS platforms. It allows you to easily integrate FFmpeg into your Swift projects using SPM.

Build based on the FFmpegKit project from https://github.com/arthenica/ffmpeg-kit, using the current version 6.0.

## Example

```swift
import ffmpegkit

func convertAudio(input: URL, output: URL) async -> Bool {
        let inPath = input.path(percentEncoded: false)
        let outPath = output.path(percentEncoded: false)
        let command = String(format: "ffmpeg -i '%@' -vn -qscale:a 0 '%@'", inPath, outPath)
        
        return await withCheckedContinuation { (continuation: CheckedContinuation<Bool, Never>) in
            let _ = FFmpegKit.executeAsync(command) { session in
                let returnCode = session?.getReturnCode()
                let success = ReturnCode.isSuccess(returnCode)
                continuation.resume(returning: success)
            }
        }
    }
```
