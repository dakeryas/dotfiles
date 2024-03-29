from IPython import get_ipython
from prompt_toolkit.enums import DEFAULT_BUFFER
from prompt_toolkit.filters import HasFocus, ViInsertMode
from prompt_toolkit.key_binding.vi_state import InputMode

def switch_to_navigation_mode(event):
    event.cli.vi_state.input_mode = InputMode.NAVIGATION


get_ipython().pt_app.key_bindings.add_binding(
    "j", "k", filter=(HasFocus(DEFAULT_BUFFER) & ViInsertMode())
)(switch_to_navigation_mode)
