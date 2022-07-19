<div align="center">

# :boom: Obliterate-Repository

~Want to leave town **leaving nothing behind**?~

Well this is just the **action** for you!

</div>

#

---

# Usage

See [action.yml](./action.yml) for more details.

Add this to your `Actions`:

```yaml
- name: Obliterate-Repository
  uses: JumperBot/Obliterate-Repository@v1.2
  with:
    # defaults to master
    branch: "dev-branch"
    
    # defaults to :boom: Obliterated!
    message: ":boom: End Game Commit"

    # defaults to false
    preserve-readme: true

    # defaults to README.md
    readme-file: "README.amd"

    # defaults to nothing
    readme-message: "readme"
```

# License

This is licensed under the [MIT LICENSE](./LICENSE)
