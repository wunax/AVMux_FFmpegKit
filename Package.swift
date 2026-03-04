// swift-tools-version:6.1
import PackageDescription

let package = Package(
    name: "AVMux_FFmpegKit",
    platforms: [
        .macOS(.v11),
        .iOS(.v14),
        .tvOS(.v14),
    ],
    products: [
        .library(
            name: "ffmpeg",
            targets: ["ffmpeg"]
        ),
        .library(
            name: "ffprobe",
            targets: ["ffprobe"]
        ),
    ],
    targets: [
        .target(
            name: "fftools",
            dependencies: [
                "Libavcodec",
                "Libavdevice",
                "Libavfilter",
                "Libavformat",
                "Libavutil",
                "Libswresample",
                "Libswscale",
                "Libssl",
                "Libcrypto",
                "Libass",
                "Libfreetype",
                "Libfribidi",
                "Libharfbuzz",
                "MoltenVK",
                "Libshaderc_combined",
                "lcms2",
                "Libplacebo",
                "Libdovi",
                "Libunibreak",
                "Libsmbclient",
                "gmp",
                "nettle",
                "hogweed",
                "gnutls",
                "Libdav1d",
                "Libuavs3d",
            ],
            cSettings: [
                .headerSearchPath("include/textformat"),
            ],
            linkerSettings: [
                .linkedFramework("AudioToolbox"),
                .linkedFramework("AVFAudio"),
                .linkedFramework("AVFoundation"),
                .linkedFramework("CoreAudio"),
                .linkedFramework("CoreFoundation"),
                .linkedFramework("CoreGraphics"),
                .linkedFramework("CoreMedia"),
                .linkedFramework("CoreVideo"),
                .linkedFramework("Foundation"),
                .linkedFramework("Metal"),
                .linkedFramework("QuartzCore"),
                .linkedFramework("Security"),
                .linkedFramework("VideoToolbox"),
                .linkedFramework("Cocoa", .when(platforms: [.macOS])),
                .linkedFramework("DiskArbitration", .when(platforms: [.macOS])),
                .linkedFramework("IOKit", .when(platforms: [.macOS])),
                .linkedFramework("IOSurface"),
                .linkedFramework("UIKit", .when(platforms: [.iOS, .tvOS])),
                .linkedLibrary("bz2"),
                .linkedLibrary("c++"),
                .linkedLibrary("expat"),
                .linkedLibrary("iconv"),
                .linkedLibrary("resolv"),
                .linkedLibrary("xml2"),
                .linkedLibrary("z"),
            ]
        ),
        .target(
            name: "ffmpeg",
            dependencies: ["fftools"],
            cSettings: [
                .headerSearchPath("resources"),
            ]
        ),
        .target(
            name: "ffprobe",
            dependencies: ["fftools"]
        ),
        .binaryTarget(
            name: "Libavcodec",
            url: "https://github.com/wunax/AVMux_FFmpegKit/releases/download/1.0.0/Libavcodec.xcframework.zip",
            checksum: "5f1111c6538ad4d1c9a634565dcf1151de50b629148f431af949aa946259b411"
        ),
        .binaryTarget(
            name: "Libavdevice",
            url: "https://github.com/wunax/AVMux_FFmpegKit/releases/download/1.0.0/Libavdevice.xcframework.zip",
            checksum: "609f268bcb13c0743793c5ae95d24472c2fe939b5c8e20b2c12de9867bc8e063"
        ),
        .binaryTarget(
            name: "Libavfilter",
            url: "https://github.com/wunax/AVMux_FFmpegKit/releases/download/1.0.0/Libavfilter.xcframework.zip",
            checksum: "bdaa355e9c47609c64e99c0d59c9cf41b99e564f29aaac43cb6bb4381b7dbde9"
        ),
        .binaryTarget(
            name: "Libavformat",
            url: "https://github.com/wunax/AVMux_FFmpegKit/releases/download/1.0.0/Libavformat.xcframework.zip",
            checksum: "d6810905020b1f692af80462471c8eaabf1adc0e629b72bb50fb777342d58416"
        ),
        .binaryTarget(
            name: "Libavutil",
            url: "https://github.com/wunax/AVMux_FFmpegKit/releases/download/1.0.0/Libavutil.xcframework.zip",
            checksum: "b0d0ee7f8b8a55b9ee5e5c2f27e347265413b096b20bca39586f919d9cb7b4bc"
        ),
        .binaryTarget(
            name: "Libswresample",
            url: "https://github.com/wunax/AVMux_FFmpegKit/releases/download/1.0.0/Libswresample.xcframework.zip",
            checksum: "5eb2d1d2414ebfcfe69c84e12488ca53a20d5aaeb5eea54406314e44110021ee"
        ),
        .binaryTarget(
            name: "Libswscale",
            url: "https://github.com/wunax/AVMux_FFmpegKit/releases/download/1.0.0/Libswscale.xcframework.zip",
            checksum: "3d63b66d45a3958418718c24a18eb5dfc08fd26ea56e5413c9224512d3a65fc7"
        ),
        .binaryTarget(
            name: "Libcrypto",
            url: "https://github.com/mpvkit/openssl-build/releases/download/3.3.5/Libcrypto.xcframework.zip",
            checksum: "593283be2a90f7fd66f6e6ed331b2f099cf403e0926fe3b4ac09a7062b793965"
        ),
        .binaryTarget(
            name: "Libssl",
            url: "https://github.com/mpvkit/openssl-build/releases/download/3.3.5/Libssl.xcframework.zip",
            checksum: "ff5ffd43d015d7285fd37e4a3145b25cbd8d2842740bd629a711c299a20e226a"
        ),
        .binaryTarget(
            name: "gmp",
            url: "https://github.com/mpvkit/gnutls-build/releases/download/3.8.11/gmp.xcframework.zip",
            checksum: "ad33c7a08f4cdcb9924c8f0e6d9a054dad33d7794b97667bf8b6fb2b236ae585"
        ),
        .binaryTarget(
            name: "nettle",
            url: "https://github.com/mpvkit/gnutls-build/releases/download/3.8.11/nettle.xcframework.zip",
            checksum: "0fdf3ebf8bd7b8bc8eee837cf27261cb4c52ae520b6576a2f468656aa1691e02"
        ),
        .binaryTarget(
            name: "hogweed",
            url: "https://github.com/mpvkit/gnutls-build/releases/download/3.8.11/hogweed.xcframework.zip",
            checksum: "25727c9fa67287fa0a4f4722f88bb8be669b23cd7e837e2d00870eb8a25d3f27"
        ),
        .binaryTarget(
            name: "gnutls",
            url: "https://github.com/mpvkit/gnutls-build/releases/download/3.8.11/gnutls.xcframework.zip",
            checksum: "3dbec5809339189bf9679e218c6cff387ebf8fb72745927835afc2678f5c9f4d"
        ),
        .binaryTarget(
            name: "Libunibreak",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.4/Libunibreak.xcframework.zip",
            checksum: "001087c0e927ae00f604422b539898b81eb77230ea7700597b70393cd51e946c"
        ),
        .binaryTarget(
            name: "Libfreetype",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.4/Libfreetype.xcframework.zip",
            checksum: "f2840aba1ce35e51c0595557eee82c908dac8e32108ecc0661301c06061e051c"
        ),
        .binaryTarget(
            name: "Libfribidi",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.4/Libfribidi.xcframework.zip",
            checksum: "4a55513792ef7a17893875f74cc84c56f3657e8768c07a7a96f563a11dc4b743"
        ),
        .binaryTarget(
            name: "Libharfbuzz",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.4/Libharfbuzz.xcframework.zip",
            checksum: "91558d8497d9d97bc11eeef8b744d104315893bfee8f17483d8002e14565f84b"
        ),
        .binaryTarget(
            name: "Libass",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.4/Libass.xcframework.zip",
            checksum: "1e41f5a69c74f6c6407aab84a65ccd0b34e73fa44465f488f99bf22bd61b070d"
        ),
        .binaryTarget(
            name: "Libsmbclient",
            url: "https://github.com/mpvkit/libsmbclient-build/releases/download/4.15.13-2512/Libsmbclient.xcframework.zip",
            checksum: "3a53375fab11bc888cc553664ea5dd902208d04f0cc21ec746302bf356246b6f"
        ),
        .binaryTarget(
            name: "Libuavs3d",
            url: "https://github.com/mpvkit/libuavs3d-build/releases/download/1.2.1-xcode/Libuavs3d.xcframework.zip",
            checksum: "1e69250279be9334cd2f6849abdc884c8e4bb29212467b6f071fdc1ac2010b6b"
        ),
        .binaryTarget(
            name: "Libdovi",
            url: "https://github.com/mpvkit/libdovi-build/releases/download/3.3.2/Libdovi.xcframework.zip",
            checksum: "e693e239808350868e79c5448ef9f02e2716bc822dd8632a41a368a1eae5ca7d"
        ),
        .binaryTarget(
            name: "MoltenVK",
            url: "https://github.com/mpvkit/moltenvk-build/releases/download/1.4.1/MoltenVK.xcframework.zip",
            checksum: "9bd1ca1e4563bacd25d6e55d37b10341d50b2601bc2684bc332188e79daa2b79"
        ),
        .binaryTarget(
            name: "Libshaderc_combined",
            url: "https://github.com/mpvkit/libshaderc-build/releases/download/2025.5.0/Libshaderc_combined.xcframework.zip",
            checksum: "758047b615708575b580eb960a2d083f760a29dc462d6eaa360416c946ce433b"
        ),
        .binaryTarget(
            name: "lcms2",
            url: "https://github.com/mpvkit/lcms2-build/releases/download/2.17.0/lcms2.xcframework.zip",
            checksum: "dc0dce0606f6ab6841a8ec5a6bd4448e2f3ef00661a050460f806c9393dc6982"
        ),
        .binaryTarget(
            name: "Libplacebo",
            url: "https://github.com/mpvkit/libplacebo-build/releases/download/7.351.0-2512/Libplacebo.xcframework.zip",
            checksum: "3b2bd57b82549566963effadf0891a141448d9f89c7d48fca0b8f823b854bac6"
        ),
        .binaryTarget(
            name: "Libdav1d",
            url: "https://github.com/mpvkit/libdav1d-build/releases/download/1.5.2-xcode/Libdav1d.xcframework.zip",
            checksum: "8a8b78e23e28ecc213232805f3c1936141fc9befe113e87234f4f897f430a532"
        ),
    ],
    cLanguageStandard: .c11
)
