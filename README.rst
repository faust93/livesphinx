LiveSphinx
----------

Simple online editor for reStructuredText with Sphinx extensions support.

Changelog
~~~~~~~~~~

* Dockerize and update Python dependencies
* ``sphinx.ext.graphviz`` extension support

Getting setup
-------------

Requirements for rsted:

* Flask
* Redis
* rst2html (from Docutils)
* Sphinx

These requirements are expressed in the pip-requirements.txt file and may be
installed by running the following (from within a virtual environment)::

    pip install -r requirements.txt


How to run
----------

From within your environment, just run::

    ./application.py

This will start a server on port 5000.  Just visit http://localhost:5000/ in
your browser.

Docker
------
In a docker installed host, just build and run::

    docker build -t rsted .
    docker run --name rsted --rm -p 5000:5000 rsted

A server starts on port 5001. Please adjust it, if you need another port
by changing run command above. And then just visit http://localhost:5000/ in
your browser.
