{% from 'lldpd/map.jinja' import lldpd with context %}
{% set formula = lldpd.required_formula|default(false) %}

{%- if formula %}
include:
  - {{ formula }}
{%- endif %}

install_lldpd:
  pkg.latest:
    - name: {{ lldpd.package }}
    {%- if formula %}
    - require:
      - pkg: {{ formula }}
    {%- endif %}

start_lldp:
  service.running:
    - name: {{ lldpd.service }}
    - enable: True
