import click


def hello(name: str = "World") -> str:
    return f"Hello, {name}!"


@click.command()
@click.argument("name", required=False, default="World")
def cli(name):
    click.echo(hello(name))


if __name__ == "__main__":
    cli()
