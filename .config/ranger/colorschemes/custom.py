from ranger.gui.colorscheme import ColorScheme

class custom(ColorScheme):
    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)

        accent = '#d47189'

        self.set('default', fg='#e6e6ef', bg=accent, bold=False)
        self.set('directory', fg=accent, bg=None, bold=True)
        self.set('executable', fg='#56e0d0', bg=None, bold=True)
        self.set('link', fg='#5aa7ff', bg=None, bold=True)
        self.set('file', fg='#e6e6ef', bg=None, bold=False)

        self.set('mark', fg='#0f0f14', bg=accent, bold=True)
        self.set('selected', fg=accent, bg=accent, bold=True)

        self.set('title', fg=accent, bg=None, bold=True)
        self.set('cut', fg='#ffcc66', bg=None, bold=True)
        self.set('error', fg='#ff5c7a', bg=None, bold=True)
        self.set('status', fg='#e6e6ef', bg='#12121a', bold=False)

        self.set('border', fg='#2a2a36', bg=None, bold=False)

