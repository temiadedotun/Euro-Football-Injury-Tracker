
ALTER TABLE football_injury
ADD COLUMN injured_body_part VARCHAR(25);

UPDATE football_injury
SET injured_body_part = 'Knee'
WHERE injury LIKE '%Meniscus%' OR 
        injury LIKE '%Patellar%' OR 
        injury LIKE '%Cruciate%' OR 
        injury LIKE '%Ligament%' OR 
        injury LIKE '%Knee%' OR 
        injury LIKE '%Arthroscopy%';

UPDATE football_injury
SET injured_body_part = 'Ankle'
WHERE injury LIKE '%Syndes%' OR
        injury LIKE '%Metatarsal%' OR
        injury LIKE '%Ankle%' OR 
        injury LIKE '%Tendon%';

UPDATE football_injury
SET injured_body_part = 'Foot'
WHERE injury LIKE '%Metatarsal%' OR
        injury LIKE '%Foot%' OR
        injury LIKE '%Toe%' OR
        injury LIKE '%Heel%' OR 
        injury LIKE '%Arch%' OR 
        injury LIKE '%Plantar%';

UPDATE football_injury
SET injured_body_part = 'Groin'
WHERE injury LIKE '%Adductor%' OR
        injury LIKE '%Groin%' OR
        injury LIKE '%Inguinal%';

UPDATE football_injury
SET injured_body_part = 'Mouth'
WHERE injury LIKE '%Tooth%' OR 
        injury LIKE '%Mouth%' OR 
        injury LIKE '%Dental%' OR 
        injury LIKE '%Tonsil%';

UPDATE football_injury
SET injured_body_part = 'Pelvis'
WHERE injury LIKE '%Pelvic%' OR 
        injury LIKE '%Pubic%' OR 
        injury LIKE '%Testicular%';

UPDATE football_injury
SET injured_body_part = 'Hip'
WHERE injury LIKE '%Hip%';

UPDATE football_injury
SET injured_body_part = 'Thigh'
WHERE injury LIKE '%Hamstring%' OR 
        injury LIKE '%Thigh%' OR 
        injury LIKE '%Femoral%';

UPDATE football_injury
SET injured_body_part = 'Lower Leg'
WHERE injury LIKE '%Fibula%' OR
        injury LIKE '%Tibia%' OR 
        injury LIKE '%Shin%' OR
        injury LIKE '%Calf%' OR
        injury LIKE '%Achilles%';

UPDATE football_injury
SET injured_body_part = 'Shoulder'
WHERE injury LIKE '%Acromioclavicular%' OR
        injury LIKE '%Shoulder%' OR
        injury LIKE '%Collarbone%' OR 
        injury LIKE '%Capsular%';

UPDATE football_injury
SET injured_body_part = 'Skin'
WHERE injury LIKE '%Skin%' OR 
        injury LIKE '%Chickenpox%' OR 
        injury LIKE '%Flesh%';

UPDATE football_injury
SET injured_body_part = 'Wrist'
WHERE injury LIKE '%Scaphoid%' OR
        injury LIKE '%Wrist%';

UPDATE football_injury
SET injured_body_part = 'Elbow'
WHERE injury LIKE '%Elbow%';

UPDATE football_injury
SET injured_body_part = 'Arm'
WHERE injury LIKE '%Arm%' OR
        injury LIKE '%arm%';

UPDATE football_injury
SET injured_body_part = 'Hand'
WHERE injury LIKE '%Hand%' OR
        injury LIKE '%Finger%' OR
        injury LIKE '%Thumb%' OR 
        injury LIKE '%Metacarpal%';

UPDATE football_injury
SET injured_body_part = 'Back'
WHERE injury LIKE '%Spine%' OR
        injury LIKE '%Back%' OR
        injury LIKE '%Lumba%' OR
        injury LIKE '%Disc%' OR
        injury LIKE '%Vertebra%' OR 
        injury LIKE '%Sciatica%';

UPDATE football_injury
SET injured_body_part = 'Head'
WHERE injury LIKE '%Concussion%' OR
        injury LIKE '%Skull%' OR
        injury LIKE '%Head%' OR 
        injury LIKE '%Balance%' OR 
        injury LIKE '%Cerebral%';

UPDATE football_injury
SET injured_body_part = 'Face'
WHERE injury LIKE '%Nose%' OR
        injury LIKE '%Jaw%' OR
        injury LIKE '%Cheekbone%' OR
        injury LIKE '%Eye%' OR
        injury LIKE '%Facial%' OR 
        injury LIKE '%Capsule%';

UPDATE football_injury
SET injured_body_part = 'Neck'
WHERE injury LIKE '%Neck%' OR 
        injury LIKE '%Whiplash%';

UPDATE football_injury
SET injured_body_part = 'Chest'
WHERE injury LIKE '%Rib%' OR
        injury LIKE '%Chest%' OR 
        injury LIKE '%Angina%' OR 
        injury LIKE '%Bronchitis%' OR 
        injury LIKE '%Heart%' OR 
        injury LIKE '%flu%' OR 
        injury LIKE '%Flu%' OR 
        injury LIKE '%Pneumonia%';

UPDATE football_injury
SET injured_body_part = 'Abdomen'
WHERE injury like '%Abdominal%' OR 
        injury LIKE '%Intest%' OR 
        injury LIKE '%Kidney%' OR 
        injury LIKE '%Influenza%' OR 
        injury LIKE '%Food%' OR 
        injury LIKE '%Append%';

UPDATE football_injury
SET injured_body_part = 'Groin'
WHERE injury LIKE '%Pubalgia%';

UPDATE football_injury
SET injured_body_part = 'Leg'
WHERE injury LIKE '%Leg%';

UPDATE football_injury
SET injured_body_part = 'Internal Organ'
WHERE injury LIKE '%Bone%' OR 
        injury LIKE '%Muscle%' OR 
        injury LIKE '%Blood%' OR 
        injury LIKE '%Lung%' OR 
        injury LIKE '%Stomach%' OR 
        injury LIKE '%Intestine%' OR 
        injury LIKE '%Appendicitis%' OR 
        injury LIKE '%Pneumothorax%'

UPDATE football_injury
SET injured_body_part = 'Unknown'
WHERE injury_body_part IS NULL