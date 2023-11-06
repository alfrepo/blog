#!/usr/bin/env bash

# script to install mkdocs and mkdocs-material and plugins.
# can be used locally and is also used in CI CD

# Next install mkdocs
pip install mkdocs[i18n]

# Next install the material theme
pip install mkdocs-material

# Next install markdown include
pip install markdown-include

# Next install awesome pages
pip install mkdocs-awesome-pages-plugin

# Install Material Extensions
pip install mkdocs-material-extensions

# blogging extension
pip3 install mkdocs-blogging-plugin

# zoom image
pip install mkdocs-glightbox

# table of content 
pip install mkdocs-toc-sidebar-plugin
