import os
import sys
from pathlib import Path

repo_dir = Path(__file__).parent / "Traffic-System-Safety-Monitor-main"
if repo_dir.exists():
    os.chdir(repo_dir)
    sys.path.insert(0, str(repo_dir))
    target_script = repo_dir / "detect_single_image.py"
    with open(target_script, "r", encoding="utf-8") as f:
        code = f.read()
    exec(compile(code, str(target_script), "exec"))
