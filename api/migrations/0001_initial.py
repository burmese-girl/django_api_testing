# Generated by Django 4.0 on 2024-04-30 15:17

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('auth', '0012_alter_user_first_name_max_length'),
    ]

    operations = [
        migrations.CreateModel(
            name='BlogPost',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(max_length=100)),
                ('content', models.TextField()),
                ('public_date', models.DateTimeField(auto_now_add=True)),
            ],
        ),
        migrations.CreateModel(
            name='ContactPerson',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(blank=True, db_column='Name', max_length=255)),
            ],
        ),
        migrations.CreateModel(
            name='HistoricalRecords',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(blank=True, max_length=255)),
            ],
        ),
        migrations.CreateModel(
            name='LeadCatMaster',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(blank=True, db_column='Name', max_length=255)),
            ],
        ),
        migrations.CreateModel(
            name='LeadStatusMaster',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(blank=True, db_column='Name', max_length=255)),
            ],
        ),
        migrations.CreateModel(
            name='T01Div10',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(blank=True, db_column='Name', max_length=255)),
            ],
        ),
        migrations.CreateModel(
            name='T01Lan10',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(blank=True, db_column='Name', max_length=255)),
            ],
        ),
        migrations.CreateModel(
            name='T01Slm10',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(blank=True, db_column='Name', max_length=255)),
            ],
        ),
        migrations.CreateModel(
            name='T02Cnt10',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(blank=True, db_column='Name', max_length=255)),
            ],
        ),
        migrations.CreateModel(
            name='T02Evt10',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(blank=True, db_column='Name', max_length=255)),
            ],
        ),
        migrations.CreateModel(
            name='T02Led10',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('first_name', models.CharField(blank=True, db_column='sNameF', max_length=255)),
                ('last_name', models.CharField(blank=True, db_column='sNameL', max_length=255)),
                ('email', models.CharField(blank=True, db_column='eEmail', max_length=500, null=True)),
                ('phone', models.CharField(db_column='sPhone', max_length=500)),
                ('city', models.CharField(blank=True, db_column='sCity', max_length=40)),
                ('country', models.CharField(blank=True, db_column='sCountry', max_length=40)),
                ('website', models.CharField(blank=True, db_column='sWebsite', max_length=60)),
                ('description', models.TextField(blank=True, db_column='tDesc')),
                ('opportunity_amount', models.TextField(blank=True, db_column='oppAmt', null=True)),
                ('generated_by', models.CharField(blank=True, db_column='sGenBy', max_length=80)),
                ('created_on', models.DateTimeField(auto_now_add=True, db_column='dCreatedOn')),
                ('enquiry_type', models.CharField(blank=True, db_column='sEnqType', max_length=40)),
                ('industry', models.CharField(blank=True, choices=[('ADVERTISING', 'ADVERTISING'), ('REAL_ESTATE', 'REAL_ESTATE'), ('RETAIL', 'RETAIL'), ('AUTOMOTIVE', 'AUTOMOTIVE'), ('BANKING', 'BANKING'), ('CONTRACTING', 'CONTRACTING'), ('DISTRIBUTOR', 'DISTRIBUTOR'), ('SERVICES', 'SERVICES'), ('OTHERS', 'OTHERS')], db_column='sIndstry', max_length=20)),
                ('market_choice', models.CharField(blank=True, choices=[('OFF PLAN', 'OFF PLAN'), ('SECONDARY', 'SECONDARY')], db_column='mChoice', max_length=20)),
                ('is_contact', models.BooleanField(db_column='bIsContact', default=False)),
                ('primary_mobile', models.CharField(blank=True, db_column='primaryPhone', max_length=1000)),
                ('secondary_mobile', models.CharField(blank=True, db_column='secondaryPhone', max_length=1000)),
                ('date_of_birth', models.DateField(blank=True, db_column='dateOfBirth', null=True)),
                ('last_rotation_time', models.DateTimeField(blank=True, null=True)),
                ('has_deal', models.BooleanField(blank=True, db_column='bHasDeal', default=False, null=True)),
                ('has_multiple', models.BooleanField(blank=True, db_column='bHasMultipleDeal', default=False, null=True)),
                ('assigned_to', models.ForeignKey(blank=True, db_column='IdSlm', null=True, on_delete=django.db.models.deletion.SET_NULL, related_name='assigned_to', to='api.t01slm10')),
                ('contact', models.ForeignKey(blank=True, db_column='IdCnt', null=True, on_delete=django.db.models.deletion.SET_NULL, to='api.t02cnt10')),
                ('contact_persons', models.ManyToManyField(blank=True, related_name='leads', to='api.ContactPerson')),
                ('division', models.ForeignKey(db_column='IdDiv', null=True, on_delete=django.db.models.deletion.PROTECT, to='api.t01div10')),
                ('language', models.ForeignKey(blank=True, db_column='IdLan', null=True, on_delete=django.db.models.deletion.SET_NULL, to='api.t01lan10')),
                ('lead_category', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.SET_NULL, related_name='leads', to='api.leadcatmaster')),
                ('lead_source', models.ForeignKey(blank=True, db_column='IdEvt', null=True, on_delete=django.db.models.deletion.SET_NULL, to='api.t02evt10')),
                ('lead_status', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.SET_NULL, related_name='leads', to='api.leadstatusmaster')),
            ],
            options={
                'verbose_name': 'b1.Lead',
                'db_table': 'T02LED10',
            },
        ),
        migrations.CreateModel(
            name='T02Opp10',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(blank=True, db_column='Name', max_length=255)),
            ],
        ),
        migrations.CreateModel(
            name='T02Pil10',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(blank=True, db_column='Name', max_length=255)),
            ],
        ),
        migrations.CreateModel(
            name='T02Tsk10',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('task_name', models.CharField(db_column='sTaskName', max_length=255, null=True)),
                ('task_date', models.DateTimeField(blank=True, db_column='dTskDt', null=True)),
                ('task_type', models.CharField(choices=[('call', 'Call'), ('telephone call', 'TelePhone Call'), ('email', 'Email'), ('visit', 'Visit'), ('meeting', 'Meeting'), ('demo', 'Demo')], db_column='sTskType', max_length=25)),
                ('task_notes', models.TextField(blank=True, db_column='tTskNts', max_length=255, null=True)),
                ('status', models.CharField(choices=[('New', 'New'), ('In Progress', 'In Progress'), ('Completed', 'Completed')], db_column='sStatus', max_length=25)),
                ('priority', models.CharField(choices=[('Low', 'Low'), ('Medium', 'Medium'), ('High', 'High')], db_column='sPriorty', max_length=25)),
                ('due_date', models.DateTimeField(blank=True, db_column='dduedt', null=True)),
                ('created_on', models.DateTimeField(auto_now_add=True, db_column='dtCreatedOn')),
                ('event_link', models.TextField(blank=True, db_column='sEvtLink', null=True)),
                ('event_id', models.TextField(blank=True, db_column='sEvtId', null=True)),
                ('gmail_link', models.TextField(blank=True, null=True)),
                ('creator', models.ForeignKey(blank=True, db_column='IdUser', null=True, on_delete=django.db.models.deletion.PROTECT, to='auth.user')),
                ('division', models.ForeignKey(db_column='IdDiv', null=True, on_delete=django.db.models.deletion.PROTECT, to='api.t01div10')),
                ('lead', models.ForeignKey(db_column='IdLed', null=True, on_delete=django.db.models.deletion.CASCADE, to='api.t02led10')),
                ('opportunity', models.ForeignKey(db_column='IdOpp', null=True, on_delete=django.db.models.deletion.CASCADE, related_name='tasks', to='api.t02opp10')),
            ],
            options={
                'verbose_name': 'b3.Task',
                'db_table': 'T02TSK10',
            },
        ),
        migrations.AddField(
            model_name='t02led10',
            name='pipeline',
            field=models.ForeignKey(blank=True, db_column='IdPil', null=True, on_delete=django.db.models.deletion.SET_NULL, to='api.t02pil10'),
        ),
    ]