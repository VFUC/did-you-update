# did-you-update
Keep your tools up to date with this one easy trick! 🤪

This script does two things:
- Check when you last updated your tools and applications
- Update your tools and applications

Simple as that! I'm using it as a shell launch script, to make sure I'm not running outdated software

# Setup
- Clone this repo
- Uncomment or add your update calls in `runUpdates.sh` (whatever you want, some examples are included)
- add `sudo` if needed to the specific calls in `runUpdates.sh`
- Make sure scripts are executable - if not `chmod u+x didYouUpdate.sh runUpdates.sh`
- Call `didYouUpdate.sh` on every terminal launch (e.g. add to `~/.bash_profile`, dependent on your shell setup)

For a bit more context, [here's a blog post](https://jonas.lol/blog/check-yourself-before-you-wreck-yourself), and feel free to let me know about possible improvements by opening an issue or a pull request. Cheers! 🍺