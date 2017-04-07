integration-dockerfiles
---

[Only the beginning](https://www.youtube.com/watch?v=4Uj3zitETs4)

Some of this is really bad and quick, but I think the approach is usable for
porting jobs off of nodepool/permanent jenkins agent nodes →
docker/lxc-type-things.

Basically, make sure that `integration/jenkins` is inside the image you build
and the work is mostly done.
