from setuptools import setup, find_packages

with open("README.md", "r", encoding="utf-8") as fh:
    long_description = fh.read()

setup(
    name="svql",
    version="0.1.0",
    author="sathvik",
    author_email="sathvik@etched.com",
    description="A Python tool for parsing and analyzing SystemVerilog modules using SQL queries",
    long_description=long_description,
    long_description_content_type="text/markdown",
    url="https://github.com/etched-ai/svql",
    packages=find_packages(),
    classifiers=[
        "Programming Language :: Python :: 3",
        "License :: OSI Approved :: MIT License",
        "Operating System :: OS Independent",
        "Development Status :: 3 - Alpha",
        "Intended Audience :: Developers",
        "Topic :: Software Development :: Libraries :: Python Modules",
        "Topic :: Scientific/Engineering :: Electronic Design Automation (EDA)",
    ],
    python_requires=">=3.6",
    install_requires=[
        "pandas",
        "pandasql",
        "pyslang",
    ],
)
