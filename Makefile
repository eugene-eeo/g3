preview:
	cd docs/; g3-build
	misc/prefix-gh-pages 'docs/_g3/dst/' '${PWD}/docs/_g3/dst'

deploy:
	cd docs/; g3-build
	misc/prefix-gh-pages 'docs/_g3/dst/' '/g3'
	push-dir --dir=docs/_g3/dst --branch=gh-pages
