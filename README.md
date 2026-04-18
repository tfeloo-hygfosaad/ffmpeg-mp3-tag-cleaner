# clean-mp3-tags

Batch-clean MP3 tags with deterministic artist/title rules using ffmpeg on Linux.

## Features

- Recursively scans `.mp3` files in a target directory
- Cleans **Artist** tags:
  - Removes `feat.` / `featuring` suffixes
  - Normalizes `vs` → `vs.`
- Cleans **Title** tags:
  - Removes standalone mix labels like `(Original Mix)` or `(Radio Edit)`
  - Converts artist-prefixed radio versions to `(Artist Remix)`
- Trims extra whitespace
- Supports dry-run preview mode
- Copies audio streams without re-encoding

## Requirements

Required:

- `ffmpeg`
- `ffprobe`
- `perl`

Verify:

```bash
ffmpeg -version
ffprobe -version
perl -v
```

## Installation

Installing script to your bin folder:

```bash
make install
```

Removing script from it cleanly:

```bash
make uninstall
```

## Usage

Process a music folder:

```bash
clean-mp3-tags ~/Music
```

Preview changes without modifying files:

```bash
clean-mp3-tags --dry-run ~/Music
```

Process current directory:

```bash
clean-mp3-tags
```

## Notes

- Only files with actual tag changes are rewritten
- Metadata is updated via ffmpeg using stream copy (`-c copy`)
- Rules are intentionally simple and easy to edit in the script