# Generated by Django 5.0.4 on 2024-05-16 07:40

import django.db.models.deletion
from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Auteurs',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nom', models.CharField(max_length=100)),
                ('prenom', models.CharField(max_length=100)),
                ('age', models.CharField(max_length=100)),
            ],
        ),
        migrations.CreateModel(
            name='Categories',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nom', models.CharField(max_length=100)),
                ('desc', models.TextField(blank=True, null=True)),
            ],
        ),
        migrations.CreateModel(
            name='Joueurs',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nom', models.CharField(max_length=100)),
                ('prenom', models.CharField(max_length=100)),
                ('mail', models.CharField(max_length=100)),
                ('mdp', models.CharField(max_length=100)),
                ('type', models.CharField(choices=[('professionnel', 'Professionnel'), ('particulier', 'Particulier')], max_length=20)),
            ],
        ),
        migrations.CreateModel(
            name='Jeux',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('titre', models.CharField(max_length=100)),
                ('anneeSortie', models.CharField(max_length=100)),
                ('editeur', models.CharField(max_length=100)),
                ('auteur', models.ForeignKey(default=None, on_delete=django.db.models.deletion.CASCADE, to='ludotheque.auteurs')),
                ('cat', models.ForeignKey(default=None, on_delete=django.db.models.deletion.CASCADE, to='ludotheque.categories')),
            ],
        ),
        migrations.CreateModel(
            name='Commentaires',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('note', models.CharField(max_length=100)),
                ('commentaire', models.TextField(blank=True, null=True)),
                ('date', models.DateField(blank=True)),
                ('jeux', models.ForeignKey(default=None, on_delete=django.db.models.deletion.CASCADE, to='ludotheque.jeux')),
                ('joueurs', models.ForeignKey(default=None, on_delete=django.db.models.deletion.CASCADE, to='ludotheque.joueurs')),
            ],
        ),
        migrations.CreateModel(
            name='ListeJeuJoueur',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('jeux', models.ForeignKey(default=None, on_delete=django.db.models.deletion.CASCADE, to='ludotheque.jeux')),
                ('joueurs', models.ForeignKey(default=None, on_delete=django.db.models.deletion.CASCADE, to='ludotheque.joueurs')),
            ],
        ),
    ]