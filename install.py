
class WindowsLink:
    def __init__(install_path:str):
        self.install_path = install_path


class UnixLink:
    def __init__(install_path:str):
        self.install_path = install_path


INSTALL_TARGETS = [
    ("nvim", "nvim", [UnixLink("~/.config/nvim"), WindowsLink("~/Appdata/Local/nvim")],
    ("tmux", ".tmux.conf", [UnixLink("~/.tmux.conf")],
]


if __name__ == "__main__":
    print("Installing...")
    for t in INSTALL_TARGETS:
        print("TODO...")
