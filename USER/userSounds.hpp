/*
*   Hier können eigene Sounds eingebunden werden.
*   Ist in CfgSounds included.
*/

#define VOLUME 4
#define DISTANCE 15


class remote_start
{
    name = "remote_start";
    sound[] = {"USER\sounds\remote_start.ogg", 1, 1, 200};
    titles[] = {0, ""};
};

class remote_end
{
    name = "remote_end";
    sound[] = {"USER\sounds\remote_end.ogg", 1, 1, 200};
    titles[] = {0, ""};
};

class rico
{
    name = "rico";
    sound[] = {"USER\sounds\rico.ogg", VOLUME, 1, DISTANCE};
    titles[] = {0, ""};
};



// --- INTRO
class intro_01_isa
{
    name = "intro_01_isa";
    sound[] = { "USER\sounds\intro_01_isa.ogg", 2, 1, 100 };
    titles[] = {
        0, "Isabella: MARCO! WE ARE CRASHING! I CAN FEEL IT! MY STOMACH IS IN MY THROAT!"
    };
    duration = 7;
    avatar = "user\rscMessage\isabella.paa";
    object = "grad_bride";
};

class intro_02_pilot
{
    name = "intro_02_pilot";
    sound[] = { "USER\sounds\intro_02_pilot.ogg", 2, 1, 100 };
    titles[] = {
        0, "Pilot: Señorita, please sit down. Señor, please tell your wife to stop kicking me."
    };
    duration = 6;
    avatar = "user\rscMessage\pilot.paa";
    object = "grad_pilot";
};

class intro_03_isa
{
    name = "intro_03_isa";
    sound[] = { "USER\sounds\intro_03_isa.ogg", 2, 1, 100 };
    titles[] = {
        0, "Isabella: I WILL KICK WHEREVER I WANT! LAND THIS DAMN THING!"
    };
    duration = 5;
    avatar = "user\rscMessage\isabella.paa";
    object = "grad_bride";
};

class intro_04_marco
{
    name = "intro_04_marco";
    sound[] = { "USER\sounds\intro_04_marco.ogg", 2, 1, 100 };
    titles[] = {
        0, "Marco: Give me the headset! ... Hello? Alpha Team? Here is 'The Client'. We are almost there."
    };
    duration = 5;
    avatar = "user\rscMessage\marco.paa";
    object = "grad_groom";
};

class intro_05_isa
{
    name = "intro_05_isa";
    sound[] = { "USER\sounds\intro_05_isa.ogg", 2, 1, 100 };
    titles[] = {
        0, "Isabella: MARCO! DO SOMETHING, HE WILL KILL US ALL!"
    };
    duration = 5;
    avatar = "user\rscMessage\isabella.paa";
    object = "grad_bride";
};

class intro_06_pilot
{
    name = "intro_06_pilot";
    sound[] = { "USER\sounds\intro_06_pilot.ogg", 2, 1, 100 };
    titles[] = {
        0, "Pilot: Señorita, everything is under control. These are normal aerodynamics."
    };
    duration = 5;
    avatar = "user\rscMessage\pilot.paa";
    object = "grad_pilot";
};

class intro_07_isa
{
    name = "intro_07_isa";
    sound[] = { "USER\sounds\intro_07_isa.ogg", 2, 1, 100 };
    titles[] = {
        0, "Isabella: Aerodynamics my ass! My champagne is spilling! This is a two-thousand-dollar dress, you hoi polloi!"
    };
    duration = 8;
    avatar = "user\rscMessage\isabella.paa";
    object = "grad_bride";
};

class intro_08_marco
{
    name = "intro_08_marco";
    sound[] = { "USER\sounds\intro_08_marco.ogg", 2, 1, 100 };
    titles[] = {
        0, "Marco: Alpha Team? Do you see us? We are the plane that is... wobbling dynamically."
    };
    duration = 5;
    avatar = "user\rscMessage\marco.paa";
    object = "grad_groom";
};

class intro_09_isa
{
    name = "intro_09_isa";
    sound[] = { "USER\sounds\intro_09_isa.ogg", 2, 1, 100 };
    titles[] = {
        0, "Isabella: OH GOD! THE SEA! HE'S GOING TO HIT THE WAVES! WE ARE ALL GOING TO DIE!"
    };
    duration = 06;
    avatar = "user\rscMessage\isabella.paa";
    object = "grad_bride";
};

class intro_09a_isa
{
    name = "intro_09a_isa";
    sound[] = { "USER\sounds\intro_09a_isa.ogg", 2, 1, 100 };
    titles[] = {
        0, "Isabella: PADRE NUESTRO, QUE ESTAS EN EL CIELO, SANTIFICADO SEA Tuuhooaaaa NOOOOMBREEEEE!"
    };
    duration = 10;
    avatar = "user\rscMessage\isabella.paa";
    object = "grad_bride";
};

class intro_10_pilot
{
    name = "intro_10_pilot";
    sound[] = { "USER\sounds\intro_10_pilot.ogg", 2, 1, 100 };
    titles[] = {
        0, "Pilot: Prepare for touchdown."
    };
    duration = 2;
    avatar = "user\rscMessage\pilot.paa";
    object = "grad_pilot";
};

class intro_11_isa
{
    name = "intro_11_isa";
    sound[] = { "USER\sounds\intro_11_isa.ogg", 2, 1, 100 };
    titles[] = {
        0, "Isabella: Pilot! Pull up! Not so steep!"
    };
    duration = 3;
    avatar = "user\rscMessage\isabella.paa";
    object = "grad_bride";
};

class intro_12_pilot
{
    name = "intro_12_pilot";
    sound[] = { "USER\sounds\intro_12_pilot .ogg", 2, 1, 100 };
    titles[] = {
        0, "Pilot: Touchdown."
    };
    duration = 3;
    avatar = "user\rscMessage\pilot.paa";
    object = "grad_pilot";
};

class intro_13_isa
{
    name = "intro_13_isa";
    sound[] = { "USER\sounds\intro_13_isa.ogg", 2, 1, 100 };
    titles[] = {
        0, "Isabella: This runway is super short, brake harder!"
    };
    duration = 4;
    avatar = "user\rscMessage\isabella.paa";
    object = "grad_bride";
};

class intro_14_marco
{
    name = "intro_14_marco";
    sound[] = { "USER\sounds\intro_14_marco.ogg", 2, 1, 100 };
    titles[] = {
        0, "Marco: Everything went well. As I told you, he is a professional."
    };
    duration = 4;
    avatar = "user\rscMessage\marco.paa";
    object = "grad_groom";
};


// LA ESQUIRA PHOTO1

class mission_01_01_marco
{
    name = "mission_01_01_marco";
    sound[] = { "USER\sounds\mission_01_01_marco.ogg", 2, 1, 100 };
    titles[] = {
        0, "Marco: Driver! Hard right! Turn the wheel! We must make a spiritual pit stop!."
    };
    duration = 4;
    avatar = "user\rscMessage\marco.paa";
    object = "grad_groom";
};

class mission_01_02_isa
{
    name = "mission_01_02_isa";
    sound[] = { "USER\sounds\mission_01_02_isa.ogg", 2, 1, 100 };
    titles[] = {
        0, "Isabella: Spiritual?! You are an atheist, Marco! And we are on a schedule!"
    };
    duration = 6;
    avatar = "user\rscMessage\isabella.paa";
    object = "grad_bride";
};

class mission_01_03_marco
{
    name = "mission_01_03_marco";
    sound[] = { "USER\sounds\mission_01_03_marco.ogg", 2, 1, 100 };
    titles[] = {
        0, "Marco: But we are passing *La Esquina*! Where our eyes first met!"
    };
    duration = 8;
    avatar = "user\rscMessage\marco.paa";
    object = "grad_groom";
};

class mission_01_04_isabella
{
    name = "mission_01_04_isabella";
    sound[] = { "USER\sounds\mission_01_04_isa.ogg", 2, 1, 100 };
    titles[] = {
        0, "Isabella:  You mean where you were vomiting on a dumpster and I stepped in it? That is your romance?!"
    };
    duration = 4;
    avatar = "user\rscMessage\isabella.paa";
    object = "grad_bride";
};

class mission_01_05_marco
{
    name = "mission_01_05_marco";
    sound[] = { "USER\sounds\mission_01_05_marco.ogg", 2, 1, 100 };
    titles[] = {
        0, "Marco: It was fate, Isabella! You offered me a napkin. I offered you my heart. We need a photo there! For the Vogue wedding special!"
    };
    duration = 8;
    avatar = "user\rscMessage\marco.paa";
    object = "grad_groom";
};

class mission_01_06_isabella
{
    name = "mission_01_06_isabella";
    sound[] = { "USER\sounds\mission_01_06_isa.ogg", 2, 1, 100 };
    titles[] = {
        0, "Isabella: Vogue? They are running the backstory piece?"
    };
    duration = 4;
    avatar = "user\rscMessage\isabella.paa";
    object = "grad_bride";
};

class mission_01_07_marco
{
    name = "mission_01_07_marco";
    sound[] = { "USER\sounds\mission_01_07_marco.ogg", 2, 1, 100 };
    titles[] = {
        0, "Marco: Yes. They want 'Gritty Origins'. 'From the Gutter to the Glory'. It will be iconic."
    };
    duration = 6;
    avatar = "user\rscMessage\marco.paa";
    object = "grad_groom";
};

class mission_01_08_isabella
{
    name = "mission_01_08_isabella";
    sound[] = { "USER\sounds\mission_01_08_isa.ogg", 2, 1, 100 };
    titles[] = {
        0, "Isabella: Ugh. Fine. Driver, take us to the dirty corner. But if a crab runs across my foot, I am shooting Marco."
    };
    duration = 8;
    avatar = "user\rscMessage\isabella.paa";
    object = "grad_bride";
};

class mission_01_09_marco
{
    name = "mission_01_09_marco";
    sound[] = { "USER\sounds\mission_01_09_marco.ogg", 2, 1, 100 };
    titles[] = {
        0, "Marco: Smile, my angel! Pretend you don't smell the garbage!"
    };
    duration = 4;
    avatar = "user\rscMessage\marco.paa";
    object = "grad_groom";
};

class mission_01_10_marco
{
    name = "mission_01_10_marco";
    sound[] = { "USER\sounds\mission_01_10_marco.ogg", 2, 1, 100 };
    titles[] = {
        0, "Marco: Driver, please take a picture. The camera is inside the car."
    };
    duration = 4;
    avatar = "user\rscMessage\marco.paa";
    object = "grad_groom";
};


// BANK ROBBERY

class mission_02_01_marco
{
    name = "mission_02_01_marco";
    sound[] = { "USER\sounds\mission_02_01_marco.ogg", 2, 1, 100 };
    titles[] = {
        0, "Marco: Uh... Isabella, my love? Do not scream. But... I think I left something on the counter at the bank."
    };
    duration = 6;
    avatar = "user\rscMessage\marco.paa";
    object = "grad_groom";
};

class mission_02_02_isabella
{
    name = "mission_02_02_isabella";
    sound[] = { "USER\sounds\mission_02_02_isa.ogg", 2, 1, 100 };
    titles[] = {
        0, "Isabella: You have the rings, RIGHT? You showed me the rings. If you lost the rings, I will use your teeth as CONFETTI!"
    };
    duration = 8;
    avatar = "user\rscMessage\isabella.paa";
    object = "grad_bride";
};

class mission_02_03_marco
{
    name = "mission_02_03_marco";
    sound[] = { "USER\sounds\mission_02_03_marco.ogg", 2, 1, 100 };
    titles[] = {
        0, "Marco: No, no! Rings are here! Shiny! Beautiful! But... my wallet. My Black Card. My ID. The cash for the... uh... 'talent'."
    };
    duration = 9;
    avatar = "user\rscMessage\marco.paa";
    object = "grad_groom";
};

class mission_02_04_isabella
{
    name = "mission_02_04_isabella";
    sound[] = { "USER\sounds\mission_02_04_isa.ogg", 2, 1, 100 };
    titles[] = {
        0, "Isabella: YOUR WALLET?! You are telling me we have to detour to that deposit box for a piece of leather?! Marco, if this is another one of your tricks to escape me, I will lose myself!"
    };
    duration = 12;
    avatar = "user\rscMessage\isabella.paa";
    object = "grad_bride";
};

class mission_02_05_marco
{
    name = "mission_02_05_marco";
    sound[] = { "USER\sounds\mission_02_05_marco.ogg", 2, 1, 100 };
    titles[] = {
        0, "Marco: Baby, I can't get married without ID! Legally, I don't exist right now! Plus our guards want to be paid in cash."
    };
    duration = 6;
    avatar = "user\rscMessage\marco.paa";
    object = "grad_groom";
};

class mission_02_06_isabella
{
    name = "mission_02_06_isabella";
    sound[] = { "USER\sounds\mission_02_06_isa.ogg", 2, 1, 100 };
    titles[] = {
        0, "Isabella: You are not a guy, you are a child! A child with a trust fund! Driver! To the bank!"
    };
    duration = 11;
    avatar = "user\rscMessage\isabella.paa";
    object = "grad_bride";
};

class mission_02_07_marco
{
    name = "mission_02_07_marco";
    sound[] = { "USER\sounds\mission_02_07_marco.ogg", 2, 1, 100 };
    titles[] = {
        0, "Marco: Rico pays for dinner with lousy music, Isabella! I pay with Platinum American Express! We need that card!"
    };
    duration = 6;
    avatar = "user\rscMessage\marco.paa";
    object = "grad_groom";
};

class mission_02_08_isabella
{
    name = "mission_02_08_isabella";
    sound[] = { "USER\sounds\mission_02_08_isa.ogg", 2, 1, 100 };
    titles[] = {
        0, "Isabella: If that card is lost I will snitch to Pa, rest assured!"
    };
    duration = 5;
    avatar = "user\rscMessage\isabella.paa";
    object = "grad_bride";
};

class mission_02_09_marco
{
    name = "mission_02_09_marco";
    sound[] = { "USER\sounds\mission_02_09_marco.ogg", 2, 1, 100 };
    titles[] = {
        0, "Marco: Please don't! I am sure they took good care of it!"
    };
    duration = 3;
    avatar = "user\rscMessage\marco.paa";
    object = "grad_groom";
};



// HAIR SALON - MISSION 03

class mission_03_01_marco
{
    name = "mission_03_01_marco";
    sound[] = { "USER\sounds\mission_03_01_marco.ogg", 2, 1, 100 };
    titles[] = {
        0, "Marco: Isabella, my love... I don't want to panic you. But the humidity in this swamp... it is attacking your volume."
    };
    duration = 7;
    avatar = "user\rscMessage\marco.paa";
    object = "grad_groom";
};

class mission_03_02_isabella
{
    name = "mission_03_02_isabella";
    sound[] = { "USER\sounds\mission_03_02_isa.ogg", 2, 1, 100 };
    titles[] = {
        0, "Isabella: What?! Is it frizzy? Do I look like a poodle? Give me a mirror!"
    };
    duration = 7;
    avatar = "user\rscMessage\isabella.paa";
    object = "grad_bride";
};

class mission_03_03_marco
{
    name = "mission_03_03_marco";
    sound[] = { "USER\sounds\mission_03_03_marco.ogg", 2, 1, 100 };
    titles[] = {
        0, "Marco: A little bit... puffy. But look! We are passing 'Nano Banana'. Pierre's famous hair salon! We can stop there."
    };
    duration = 7;
    avatar = "user\rscMessage\marco.paa";
    object = "grad_groom";
};

class mission_03_04_isabella
{
    name = "mission_03_04_isabella";
    sound[] = { "USER\sounds\mission_03_04_isa.ogg", 2, 1, 100 };
    titles[] = {
        0, "Isabella: 'Nano Banana'? That sounds like a smoothie shop for monkeys. Are you sure he is good?"
    };
    duration = 6;
    avatar = "user\rscMessage\isabella.paa";
    object = "grad_bride";
};

class mission_03_05_marco
{
    name = "mission_03_05_marco";
    sound[] = { "USER\sounds\mission_03_05_marco.ogg", 2, 1, 100 };
    titles[] = {
        0, "Marco: He is a visionary! He invented the 'Tropical Freeze' blowout. Let Pierre work his magic."
    };
    duration = 6;
    avatar = "user\rscMessage\marco.paa";
    object = "grad_groom";
};

class mission_03_06_isabella
{
    name = "mission_03_06_isabella";
    sound[] = { "USER\sounds\mission_03_06_isa.ogg", 2, 1, 100 };
    titles[] = {
        0, "Isabella: Very well, let's go to the hairdresser."
    };
    duration = 3;
    avatar = "user\rscMessage\isabella.paa";
    object = "grad_bride";
};

class mission_03_07_marco
{
    name = "mission_03_07_marco";
    sound[] = { "USER\sounds\mission_03_07_marco.ogg", 2, 1, 100 };
    titles[] = {
        0, "Marco: Yes, yes. Wonderful. You go inside, mi amor. Go. Quickly. I will... wait in the car."
    };
    duration = 6;
    avatar = "user\rscMessage\marco.paa";
    object = "grad_groom";
};

class mission_03_08_isabella
{
    name = "mission_03_08_isabella";
    sound[] = { "USER\sounds\mission_03_08_isa.ogg", 2, 1, 100 };
    titles[] = {
        0, "Isabella: You are staying in the car? Come inside! Pierre would refresh your hair cut too!"
    };
    duration = 6;
    avatar = "user\rscMessage\isabella.paa";
    object = "grad_bride";
};

class mission_03_09_marco
{
    name = "mission_03_09_marco";
    sound[] = { "USER\sounds\mission_03_09_marco.ogg", 2, 1, 100 };
    titles[] = {
        0, "Marco: I cannot. I... I want to surprise you. And I am allergic to the... banana conditioners."
    };
    duration = 7;
    avatar = "user\rscMessage\marco.paa";
    object = "grad_groom";
};

class mission_03_10_isabella
{
    name = "mission_03_10_isabella";
    sound[] = { "USER\sounds\mission_03_10_isa.ogg", 2, 1, 100 };
    titles[] = {
        0, "Isabella: You are so delicate. Fine! Don't cry when I come out looking fabulous and you look like a sweaty chauffeur."
    };
    duration = 8;
    avatar = "user\rscMessage\isabella.paa";
    object = "grad_bride";
};

class mission_03_11_marco
{
    name = "mission_03_11_marco";
    sound[] = { "USER\sounds\mission_03_11_marco.ogg", 2, 1, 100 };
    titles[] = {
        0, "Marco: Okay... she is inside. Three, two, one... where are they? It should be happening now."
    };
    duration = 7;
    avatar = "user\rscMessage\marco.paa";
    object = "grad_groom";
};

// PHOTO 2 SWAMP - MISSION 04

class mission_04_01_marco
{
    name = "mission_04_01_marco";
    sound[] = { "USER\sounds\mission_04_01_marco.ogg", 2, 1, 100 };
    titles[] = {
        0, "Marco: Driver! Halt! Look at the mist over the water. Do you recognize this smell, my angel?"
    };
    duration = 5;
    avatar = "user\rscMessage\marco.paa";
    object = "grad_groom";
};

class mission_04_02_isabella
{
    name = "mission_04_02_isabella";
    sound[] = { "USER\sounds\mission_04_02_isa.ogg", 2, 1, 100 };
    titles[] = {
        0, "Isabella: Yes. It smells like rotting fish and bad decisions. Why are we stopping in a toilet?"
    };
    duration = 7;
    avatar = "user\rscMessage\isabella.paa";
    object = "grad_bride";
};

class mission_04_03_marco
{
    name = "mission_04_03_marco";
    sound[] = { "USER\sounds\mission_04_03_marco.ogg", 2, 1, 100 };
    titles[] = {
        0, "Marco: This is the Mangrove of Ecstasy! This is where we first... connected. Physically. In the mud."
    };
    duration = 7;
    avatar = "user\rscMessage\marco.paa";
    object = "grad_groom";
};

class mission_04_04_isabella
{
    name = "mission_04_04_isabella";
    sound[] = { "USER\sounds\mission_04_04_isa.ogg", 2, 1, 100 };
    titles[] = {
        0, "Isabella: Connected?! You mean where I got a leech on my inner thigh?! That was not romance, Marco! That was a medical emergency!"
    };
    duration = 9;
    avatar = "user\rscMessage\isabella.paa";
    object = "grad_bride";
};

class mission_04_05_marco
{
    name = "mission_04_05_marco";
    sound[] = { "USER\sounds\mission_04_05_marco.ogg", 2, 1, 100 };
    titles[] = {
        0, "Marco: It was primal! It was wild! We need to recreate the magic. Just one photo by the water's edge."
    };
    duration = 6;
    avatar = "user\rscMessage\marco.paa";
    object = "grad_groom";
};

class mission_04_06_isabella
{
    name = "mission_04_06_isabella";
    sound[] = { "USER\sounds\mission_04_06_isa.ogg", 2, 1, 100 };
    titles[] = {
        0, "Isabella: You want me to stand in sludge in a Vera Wang dress? You are mentally ill."
    };
    duration = 6;
    avatar = "user\rscMessage\isabella.paa";
    object = "grad_bride";
};

class mission_04_07_marco
{
    name = "mission_04_07_marco";
    sound[] = { "USER\sounds\mission_04_07_marco.ogg", 2, 1, 100 };
    titles[] = {
        0, "Marco: But look at the 'Golden Hour' sunlight. It will make your skin look like caramel. Think of the hashtag. #SwampQueen."
    };
    duration = 6;
    avatar = "user\rscMessage\marco.paa";
    object = "grad_groom";
};  

class mission_04_08_isabella
{
    name = "mission_04_08_isabella";
    sound[] = { "USER\sounds\mission_04_08_isa.ogg", 2, 1, 100 };
    titles[] = {
        0, "Isabella: ...#SwampQueen? Is that trending? The light *is* very flattering..."
    };
    duration = 7;
    avatar = "user\rscMessage\isabella.paa";
    object = "grad_bride";
};

class mission_04_09_isabella
{
    name = "mission_04_09_isabella";
    sound[] = { "USER\sounds\mission_04_09_isa.ogg", 2, 1, 100 };
    titles[] = {
        0, "Isabella: Fine! But hurry up before the mosquitoes find us!"
    };
    duration = 5;
    avatar = "user\rscMessage\isabella.paa";
    object = "grad_bride";
};

class mission_04_10_isabella
{
    name = "mission_04_10_isa";
    sound[] = { "USER\sounds\mission_04_10_isa.ogg", 2, 1, 100 };
    titles[] = {
        0, "Isabella: Let the driver take the photo again!"
    };
    duration = 3;
    avatar = "user\rscMessage\isabella.paa";
    object = "grad_bride";
};





// --- HAIR SALON - MISSION 03

/*
[Spanish accent] [fake concern] [hesitant] Isabella, my love... [short pause] I don't want to panic you. But the humidity in this swamp... it is attacking your volume [sighs].
[Spanish accent] [gasp] [horrified] What?! Is it frizzy? Do I look like a poodle? Give me a mirror!
[Spanish accent] [smooth] [manipulative] A little bit... [chuckles] puffy. But look! We are passing 'Nano Banana'. Pierre's famous hair salon! We can stop there.
[Spanish accent] [skeptical] 'Nano Banana'? That sounds like a smoothie shop for monkeys. Are you sure he is good?
[Spanish accent] [insistent] [persuasive] He is a visionary! He invented the 'Tropical Freeze' blowout. Let Pierre work his magic.
[Spanish accent] [convinced] Very well, let's go to the hairdresser.
"[Spanish accent] [nervous] [hurried] Yes, yes. Wonderful. You go inside, mi amor. Go. Quickly. I will... [clears throat] wait in the car."
"[Spanish accent] [suspicious] [annoyed] You are staying in the car? Come inside! Pierre would refresh your hair cut too!"
"[Spanish accent] [fake cough] [lying] I cannot. I... [short pause] I want to surprise you. And I am allergic to the... banana conditioners."
"[Spanish accent] [rolling eyes] [dismissive] You are so delicate. Fine! Don't cry when I come out looking fabulous and you look like a sweaty chauffeur."
"[Spanish accent] [whispering to self] [tense] Okay... she is inside. Three, two, one... [short pause] where are they? It should be happening now."
*/

// --- BANK ROBBERY - MISSION 02

/*
[Spanish accent] [nervous patting sounds] [panic rising] Uh... Isabella, my love? Do not scream. But... [whispering] I think I left something on the counter at the bank.
[Spanish accent] [suspicious] [threatening] You have the rings, right? You showed me the rings. If you lost the rings, [growling] I will use your teeth as confetti!
[Spanish accent] [sheepish] [stammering] No, no! Rings are here! Shiny! Beautiful! But... my wallet. My Black Card. My ID. [whispering] The cash for the... uh... 'talent'.
[Spanish accent] [explosive rage] YOUR WALLET?! You are telling me we have to detour to that deposit box for a piece of leather?! Marco, if this is another one of your tricks to escape me, I will lose myself!
[Spanish accent] [desperate pleading] Baby, I can't get married without ID! Legally, I don't exist right now! Plus our guards want to be paid in cash.
[Spanish accent] [disgusted groan] You are not a guy, you are a child! A child with a trust fund! Driver! To the bank! [under breath] I should have married Rico. He has no wallet to lose.
[Spanish accent] [defensive] [whining] Rico pays for dinner with lousy music, Isabella! I pay with Platinum American Express! We need that card!
[Spanish accent] If that card is lost [threatening] I will snitch to Pa, rest assured!
[Spanish accent] [defensive] [whining] Please don't! I am sure they took good care of it!

*/


// SWAMP PHOTO2 - MISSION 04

/* 
Marco_Main,"[Spanish accent] [breathless] [romantic] Driver! Halt! Look at the mist over the water. Do you recognize this smell, my angel?
Isabella_Main,"[Spanish accent] [disgusted] [gagging] Yes. It smells like rotting fish and bad decisions. Why are we stopping in a toilet?
Marco_Main,"[Spanish accent] [sentimental] [passionate] This is the Mangrove of Ecstasy! This is where we first... connected. Physically. In the mud.
Isabella_Main,"[Spanish accent] [horrified] [shouting] Connected?! You mean where I got a leech on my inner thigh?! That was not romance, Marco! That was a medical emergency!
Marco_Main,"[Spanish accent] [dismissive] [smooth] It was primal! It was wild! We need to recreate the magic. Just one photo by the water's edge.
Isabella_Main,"[Spanish accent] [skeptical] [dry] You want me to stand in sludge in a Vera Wang dress? You are mentally ill.
Marco_Main,"[Spanish accent] [manipulative] [whispering] But look at the 'Golden Hour' sunlight. It will make your skin look like caramel. Think of the hashtag. #SwampQueen.
Isabella_Main,"[Spanish accent] [intrigued] [vanity kicking in] ...#SwampQueen? Is that trending? [pause] The light *is* very flattering...
Isabella_Main,"[Spanish accent] [commanding] [sighs] Fine! But lay your jacket down! No, lay the driver's jacket down! Yours is silk. Hurry up before the mosquitoes find me!
Marco_Main,"[Spanish accent] [whispering to self] [darkly] Yes... closer to the water. Closer to the alligators. Come on, nature. Do your job.

*/


/*
LA ESQUIRA (PHOTO1)

Marco_Main,"[Spanish accent] [excited] [shouting] Driver! Hard right! Turn the wheel! We must make a spiritual pit stop!
Isabella_Main,"[Spanish accent] [annoyed] [yelling] spiritual?! You are an atheist, Marco! And we are on a schedule!
Marco_Main,"[Spanish accent] [sentimental] [pleading] But we are passing *La Esquina*! Where our eyes first met!
Isabella_Main,"[Spanish accent] [disgusted] [dryly] You mean where you were vomiting on a dumpster and I stepped in it? That is your romance?
Marco_Main,"[Spanish accent] [defensive] [passionate] It was fate, Isabella! You offered me a napkin. I offered you my heart. We need a photo there! For the Vogue wedding special!
Isabella_Main,"[Spanish accent] [interested] [sudden shift] Vogue? They are running the backstory piece?
Marco_Main,"[Spanish accent] [lying] [smooth] Yes. They want 'Gritty Origins'. 'From the Gutter to the Glory'. It will be iconic.
Isabella_Main,"[Spanish accent] [resigned] [commanding] Ugh. Fine. Driver, take us to the dirty corner. But if a crab runs across my foot, I am shooting Marco.
Marco_Main,"[Spanish accent] [strained smile] [nervous] Smile, my angel! Pretend you don't smell the garbage!

Marco_Main,"[Spanish accent] Driver, please take a picture. The camera is inside the car.",marco_photo_taking_smile

*/