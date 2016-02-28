# -*- coding: utf-8 -*-
"""
Jednostavan modul koji služi za ispis osnovnih informacija o sustavu i instaliranim python paketima.
"""
from platform import python_version, python_compiler, architecture
from platform import system as platform_system
from multiprocessing import cpu_count
from pkg_resources import get_distribution
from IPython.display import HTML

def info_packages(pkgs):
    """Koje verzije paketa"""
    out ="<table>"
    packages = pkgs.split(',')
    for p in packages:
        out += "<tr><td><strong>{}</strong> verzija</td><td>{}</td></tr>".format(p, get_distribution(p).version)
    out += "</table>"
    return out
def print_sysinfo():
    """Osnovne informacije o Pythonu i računalu"""
    out ="<table>"
    out += "<tr><td><strong>Python verzija</strong></td><td>{}</td></tr>".format(python_version())
    out += "<tr><td><strong>kompajler</strong></td><td>{}</td></tr>".format(python_compiler())
    out += "<tr><td><strong>sustav</strong></td><td>{}</td></tr>".format(platform_system())
    out += "<tr><td><strong>broj CPU-a</strong></td><td>{}</td></tr>".format(cpu_count())
    out += "<tr><td><strong>interpreter</strong></td><td>{}</td></tr>".format(architecture()[0])
    out += "</table>"
    return out