> [!IMPORTANT]
> ### Please see https://github.com/rmartine-ias/jq-fish-plugin instead.

<img src="https://cdn.rawgit.com/oh-my-fish/oh-my-fish/e4f1c2e0219a17e2c748b824004c8d0b38055c16/docs/logo.svg" align="left" width="144px" height="144px"/>

#### jqrepl
> A plugin for [Oh My Fish][omf-link].

[![MIT License](https://img.shields.io/badge/license-MIT-007EC7.svg?style=flat-square)](/LICENSE)
[![Fish Shell Version](https://img.shields.io/badge/fish-v3.0.0-007EC7.svg?style=flat-square)](https://fishshell.com)
[![Oh My Fish Framework](https://img.shields.io/badge/Oh%20My%20Fish-Framework-007EC7.svg?style=flat-square)](https://www.github.com/oh-my-fish/oh-my-fish)

<br/>

[![asciicast](https://asciinema.org/a/d4pqBPtEkiDmm1sZp5qnVlLdC.svg)](https://asciinema.org/a/d4pqBPtEkiDmm1sZp5qnVlLdC)

## Prerequisities

- [jq](https://stedolan.github.io/jq)
- [fzf](https://github.com/junegunn/fzf)

## Install

```fish
$ omf install https://github.com/jihchi/jq-fish-plugin.git
```


## Usage

```fish
# read from a file
$ jqrepl [file]

# read from stdin
$ cat <json> | jqrepl
```

## Example

```fish
$ curl -s pie.dev/json | jqrepl
```

<img width="1440" alt="example" src="https://user-images.githubusercontent.com/87983/161599747-0882aff5-170a-4355-8395-a071009db450.png">

# License

[MIT][mit] © [Jihchi Lee][author] et [al][contributors]

## Contributors

Many thanks for your help!

<a href="https://github.com/jihchi/jq-fish-plugin/graphs/contributors">
  <img src="https://contributors-img.web.app/image?repo=jihchi/jq-fish-plugin" />
</a>

[mit]:            https://opensource.org/licenses/MIT
[author]:         https://github.com/jihchi
[contributors]:   https://github.com/jihchi/jq-fish-plugin/graphs/contributors
[omf-link]:       https://www.github.com/oh-my-fish/oh-my-fish

[license-badge]:  https://img.shields.io/badge/license-MIT-007EC7.svg?style=flat-square
