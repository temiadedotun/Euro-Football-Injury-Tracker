
ALTER TABLE football_injury
ADD COLUMN injury_classification VARCHAR(25);

UPDATE football_injury
SET injury_classification = 'Fracture'
WHERE injury LIKE '%Fracture%' OR
        injury LIKE '%Broken%' OR 
        injury LIKE '%Crack%' OR
        injury LIKE '%Fissure%';

UPDATE football_injury
SET injury_classification = 'Tear'
WHERE injury LIKE '%Tear%' OR
        injury LIKE '%Torn%' OR
        injury LIKE '%Rupture%';

UPDATE football_injury
SET injury_classification = 'Sprain'
WHERE injury LIKE '%Sprain%';

UPDATE football_injury
SET injury_classification = 'Strain'
WHERE injury LIKE '%Strain%' OR
        injury LIKE '%Stretch%' OR 
        injury LIKE '%stretch%';

UPDATE football_injury
SET injury_classification = 'Dislocation'
WHERE injury LIKE '%Dislocation%';

UPDATE football_injury
SET injury_classification = 'Inflammation'
WHERE injury LIKE '%Inflammation%' OR 
            injury LIKE '%Tendonitis%' OR 
            injury LIKE '%Bursitis%' OR 
            injury LIKE '%Edema%' OR 
            injury LIKE '%Irritation%' OR 
            injury LIKE '%Bronchitis%';

UPDATE football_injury
SET injury_classification = 'Bruise'
WHERE injury LIKE '%Bruise%' OR 
        injury like '%bruise%' OR 
        injury LIKE '%Contusion%';

UPDATE football_injury
SET injury_classification = 'Concussion'
WHERE injury LIKE '%Concussion%' OR 
        injury LIKE '%Balance%' OR 
        injury LIKE '%Cerebral%';

UPDATE football_injury
SET injury_classification = 'Impact'
WHERE injury LIKE '%Knock%';

UPDATE football_injury
SET injury_classification = 'Laceration'
WHERE injury LIKE '%Laceration%' OR 
        injury LIKE '%Cut%' OR 
        injury LIKE '%Wound%';

UPDATE football_injury
SET injury_classification = 'Damage'
WHERE injury LIKE '%Damage%';

UPDATE football_injury
SET injury_classification = 'Functional'
WHERE injury LIKE '%Stiffness%' OR 
        injury LIKE '%Fatigue%' OR 
        injury LIKE '%Contracture%' OR 
        injury LIKE '%Problems%' OR 
        injury LIKE '%Pain%' OR 
        injury LIKE '%Contortion%';

UPDATE football_injury
SET injury_classification = 'Surgery'
WHERE injury LIKE '%Surg%' OR 
        injury LIKE '%Arthroscopy%' OR 
        injury LIKE '%Appendectomy%';

UPDATE football_injury
SET injury_classification = 'Illness'
WHERE injury LIKE '%Ill%' OR 
        injury LIKE '%Fever%' OR 
        injury LIKE '%Depression%' OR 
        injury LIKE '%Rest%' OR 
        injury LIKE '%Fitness%' OR 
        injury LIKE '%Reaction%' OR 
        injury LIKE '%Cancer%' OR 
        injury LIKE '%Malaria%';

UPDATE football_injury
SET injury_classification = 'Infection'
WHERE injury LIKE '%Virus%' OR 
        injury LIKE '%Quarantine%' OR 
        injury LIKE '%Tonsillitis%' OR 
        injury LIKE '%Flu%' OR 
        injury LIKE '%Cold%' OR 
        injury LIKE '%Influenza%' OR 
        injury LIKE '%Infection%' OR 
        injury LIKE '%Pneumonia%'

UPDATE football_injury
SET injury_classification = 'Other'
WHERE injury_classification IS NULL