Select o.orth_id, o.type, o.orth, f.form_id from
form f inner join orth o on f.form_id =o.form_id inner join pronunciation p on f.form_id=p.form_id;

Select p.notation, f.form_id, p.form_id, f.type  from
form f inner join pronunciation p on f.form_id =p.form_id;

select * from
form, pronunciation, entry;

select * from
form f inner join pronunciation p
where f.form_id = p.form_id;



select e.entry_id,  e.id, e.lang, f.entry_id, f.form_id, f.type from entry e
left join form f on e.entry_id = f.entry_id
#where f.type = 'NEBULLEMMA'
where f.type <> 'lautung';


select distinct type from form;
Select * from form where form_id=7621;

Select o.orth_id, o.type, o.orth, f.form_id from
form f left join orth o on f.form_id =o.form_id
where o.type='orig';

Select * from
form f left join orth o on f.form_id =o.form_id
where f.form_id=7621;

select * from entry where entry_id=3815;


Select * from
form f 
where f.form_id=7621;

SELECT notation, pron, form_id, concat( pron,'@',notation)  FROM pronunciation;

SELECT pron,notation, form_id FROM pronunciation where notation='ipa';

select e.id, s.sense_id from
entry e inner join sense s on e.entry_id= s.entry_id;

select s.sense_id, sense_definition from Sense s left join sense_definition sd
on s.sense_id =sd.sense_id;
select * from Sense s left join sense_definition sd
on s.sense_id =sd.sense_id;

SELECT pron,notation, form_id FROM pronunciation where notation='Tustep';


SELECT g.pos, e.id, g.entry_id,
CASE pos
WHEN  'Verb' THEN 'verb'
WHEN   'subst' THEN 'noun'
WHEN   'Pron' THEN 'pronoun'
WHEN   'adv' THEN 'adverb'
WHEN   'adj' THEN 'adjective'
WHEN   'interj' THEN 'interjection'
WHEN   'num' THEN 'numeral'
WHEN   'conj' THEN 'conjuction'
WHEN   'prep' THEN 'verb'
WHEN   'subst' THEN 'fusedPreposition'
ELSE 'Unknown'
END lexinfopos
from grammar_group g left join entry e on g.entry_id =e.entry_id;

select * from 
reference
where type = 'fragebogenNummer';

select e.entry_id , SUBSTRING_INDEX(SUBSTRING_INDEX(r.ref, ':', 1), ',', -1) as FragNo 
from entry e inner join reference r
on e.entry_id =r.entry_id
where r.type="fragebogenNummer";






















