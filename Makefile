preview:
	cd docs/; g3-build
	misc/prefix-gh-pages 'docs/_g3/dst/' '${PWD}/docs/_g3/dst'
