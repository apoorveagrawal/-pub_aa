
{% extends 'full.tpl'%}
{% block any_cell %}
{% if 'Hard' in cell['metadata'].get('tags', []) %}
    <div style="border:thin solid red">
        {{ super() }}
    </div>
{% elif 'Medium' in cell['metadata'].get('tags', []) %}
    <div style="border:thin solid orange">
        {{ super() }}
    </div>
{% elif 'Easy' in cell['metadata'].get('tags', []) %}
    <div style="border:thin solid green">
        {{ super() }}
    </div>
{% else %}
    {{ super() }}
{% endif %}
{% endblock any_cell %}

example = !jupyter nbconvert --to html 'example.ipynb' --template=mytemplate.tpl --stdout
example = example[3:] # have to remove the first three lines which are not proper html
from IPython.display import HTML, display
display(HTML('\n'.join(example)))

iris.info()
