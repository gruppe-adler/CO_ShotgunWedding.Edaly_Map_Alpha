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
    customsubtitle[] = {0, ""};
};

class remote_end
{
    name = "remote_end";
    sound[] = {"USER\sounds\remote_end.ogg", 1, 1, 200};
    titles[] = {0, ""};
    customsubtitle[] = {0, ""};
};


class alarmbell
{
    name = "alarmbell";
    sound[] = { "USER\sounds\alarmbell.ogg", 2, 1, 100 };
    titles[] = {0, ""};
    customsubtitle[] = {
        0, ""
    };
};

class churchbell
{
    name = "churchbell";
    sound[] = { "USER\sounds\churchbell.ogg", 2, 1, 100 };
    titles[] = {0, ""};
    customsubtitle[] = {
        0, ""
    };
};


class gunshot_impact
{
    name = "gunshot_impact";
    sound[] = { "USER\sounds\gunshot_impact.ogg", 2, 1, 100 };
    titles[] = {0, ""};
    customsubtitle[] = {
        0, ""
    };
};

class gunshot
{
    name = "gunshot";
    sound[] = { "USER\sounds\gunshot.ogg", 2, 1, 100 };
    titles[] = {0, ""};
    customsubtitle[] = {
        0, ""
    };
};


class civpanic_1
{
    name = "civpanic_1";
    sound[] = { "USER\sounds\civpanic_1.ogg", 2, 1, 100 };
    titles[] = {0, ""};
    customsubtitle[] = {
        0, ""
    };
};

class civpanic_2
{
    name = "civpanic_2";
    sound[] = { "USER\sounds\civpanic_2.ogg", 2, 1, 100 };
    titles[] = {0, ""};
    customsubtitle[] = {
        0, ""
    };
};

class civpanic_3
{
    name = "civpanic_3";
    sound[] = { "USER\sounds\civpanic_3.ogg", 2, 1, 100 };
    titles[] = {0, ""};
    customsubtitle[] = {
        0, ""
    };
};

class civpanic_4
{
    name = "civpanic_4";
    sound[] = { "USER\sounds\civpanic_4.ogg", 2, 1, 100 };
    titles[] = {0, ""};
    customsubtitle[] = {
        0, ""
    };
};

class civpanic_5
{
    name = "civpanic_5";
    sound[] = { "USER\sounds\civpanic_5.ogg", 2, 1, 100 };
    titles[] = {0, ""};
    customsubtitle[] = {
        0, ""
    };
};

class civpanic_6
{
    name = "civpanic_6";
    sound[] = { "USER\sounds\civpanic_6.ogg", 2, 1, 100 };
    titles[] = {0, ""};
    customsubtitle[] = {
        0, ""
    };
};

class civpanic_7
{
    name = "civpanic_7";
    sound[] = { "USER\sounds\civpanic_7.ogg", 2, 1, 100 };
    titles[] = {0, ""};
    customsubtitle[] = {
        0, ""
    };
};

class civpanic_8
{
    name = "civpanic_8";
    sound[] = { "USER\sounds\civpanic_8.ogg", 2, 1, 100 };
    titles[] = {0, ""};
    customsubtitle[] = {
        0, ""
    };
};

class civpanic_9
{
    name = "civpanic_9";
    sound[] = { "USER\sounds\civpanic_9.ogg", 2, 1, 100 };
    titles[] = {0, ""};
    customsubtitle[] = {
        0, ""
    };
};

class civpanic_10
{
    name = "civpanic_10";
    sound[] = { "USER\sounds\civpanic_10.ogg", 2, 1, 100 };
    titles[] = {0, ""};
    customsubtitle[] = {
        0, ""
    };
};

class civpanic_11
{
    name = "civpanic_11";
    sound[] = { "USER\sounds\civpanic_11.ogg", 2, 1, 100 };
    titles[] = {0, ""};
    customsubtitle[] = {
        0, ""
    };
};



class music_intro
{
    name = "music_intro";
    sound[] = { "USER\sounds\music_intro.ogg", db-3, 1, 100 };
    titles[] = {0, ""};
    customsubtitle[] = {
        0, ""
    };
};

class music_outro
{
    name = "music_outro";
    sound[] = { "USER\sounds\music_outro.ogg", db-6, 1, 100 };
    titles[] = {0, ""};
    customsubtitle[] = {
        0, ""
    };
};


class rico
{
    name = "rico";
    sound[] = {"USER\sounds\rico.ogg", VOLUME, 1, DISTANCE};
    titles[] = {0, ""};
    customsubtitle[] = {0, ""};
};



// --- INTRO
class intro_01_isa
{
    name = "intro_01_isa";
    sound[] = { "USER\sounds\intro_01_isa.ogg", 2, 1, 100 };
    titles[] = {0, ""};
    customsubtitle[] = {
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
    titles[] = {0, ""};
    customsubtitle[] = {
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
    titles[] = {0, ""};
    customsubtitle[] = {
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
    titles[] = {0, ""};
    customsubtitle[] = {
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
    titles[] = {0, ""};
    customsubtitle[] = {
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
    titles[] = {0, ""};
    customsubtitle[] = {
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
    titles[] = {0, ""};
    customsubtitle[] = {
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
    titles[] = {0, ""};
    customsubtitle[] = {
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
    titles[] = {0, ""};
    customsubtitle[] = {
        0, "Isabella: OH GOD! THE SEA! HE'S GOING TO HIT THE WAVES! WE ARE ALL GOING TO DIE!"
    };
    duration = 6;
    avatar = "user\rscMessage\isabella.paa";
    object = "grad_bride";
};

class intro_09a_isa
{
    name = "intro_09a_isa";
    sound[] = { "USER\sounds\intro_09a_isa.ogg", 2, 1, 100 };
    titles[] = {0, ""};
    customsubtitle[] = {
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
    titles[] = {0, ""};
    customsubtitle[] = {
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
    titles[] = {0, ""};
    customsubtitle[] = {
        0, "Isabella: Pilot! Pull up! Not so steep!"
    };
    duration = 3;
    avatar = "user\rscMessage\isabella.paa";
    object = "grad_bride";
};

class intro_12_pilot
{
    name = "intro_12_pilot";
    sound[] = { "USER\sounds\intro_12_pilot.ogg", 2, 1, 100 };
    titles[] = {0, ""};
    customsubtitle[] = {
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
    titles[] = {0, ""};
    customsubtitle[] = {
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
    titles[] = {0, ""};
    customsubtitle[] = {
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
    titles[] = {0, ""};
    customsubtitle[] = {
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
    titles[] = {0, ""};
    customsubtitle[] = {
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
    titles[] = {0, ""};
    customsubtitle[] = {
        0, "Marco: But we are passing *La Esquina*! Where our eyes first met!"
    };
    duration = 8;
    avatar = "user\rscMessage\marco.paa";
    object = "grad_groom";
};

class mission_01_04_isa
{
    name = "mission_01_04_isa";
    sound[] = { "USER\sounds\mission_01_04_isa.ogg", 2, 1, 100 };
    titles[] = {0, ""};
    customsubtitle[] = {
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
    titles[] = {0, ""};
    customsubtitle[] = {
        0, "Marco: It was fate, Isabella! You offered me a napkin. I offered you my heart. We need a photo there! For the Vogue wedding special!"
    };
    duration = 8;
    avatar = "user\rscMessage\marco.paa";
    object = "grad_groom";
};

class mission_01_06_isa
{
    name = "mission_01_06_isa";
    sound[] = { "USER\sounds\mission_01_06_isa.ogg", 2, 1, 100 };
    titles[] = {0, ""};
    customsubtitle[] = {
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
    titles[] = {0, ""};
    customsubtitle[] = {
        0, "Marco: Yes. They want 'Gritty Origins'. 'From the Gutter to the Glory'. It will be iconic."
    };
    duration = 6;
    avatar = "user\rscMessage\marco.paa";
    object = "grad_groom";
};

class mission_01_08_isa
{
    name = "mission_01_08_isa";
    sound[] = { "USER\sounds\mission_01_08_isa.ogg", 2, 1, 100 };
    titles[] = {0, ""};
    customsubtitle[] = {
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
    titles[] = {0, ""};
    customsubtitle[] = {
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
    titles[] = {0, ""};
    customsubtitle[] = {
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
    titles[] = {0, ""};
    customsubtitle[] = {
        0, "Marco: Uh... Isabella, my love? Do not scream. But... I think I left something on the counter at the bank."
    };
    duration = 6;
    avatar = "user\rscMessage\marco.paa";
    object = "grad_groom";
};

class mission_02_02_isa
{
    name = "mission_02_02_isa";
    sound[] = { "USER\sounds\mission_02_02_isa.ogg", 2, 1, 100 };
    titles[] = {0, ""};
    customsubtitle[] = {
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
    titles[] = {0, ""};
    customsubtitle[] = {
        0, "Marco: No, no! Rings are here! Shiny! Beautiful! But... my wallet. My Black Card. My ID. The cash for the... uh... 'talent'."
    };
    duration = 9;
    avatar = "user\rscMessage\marco.paa";
    object = "grad_groom";
};

class mission_02_04_isa
{
    name = "mission_02_04_isa";
    sound[] = { "USER\sounds\mission_02_04_isa.ogg", 2, 1, 100 };
    titles[] = {0, ""};
    customsubtitle[] = {
        0, "Isabella: YOUR WALLET?! You are telling me we have to detour to that deposit box for a piece of leather?!"
    };
    duration = 8;
    avatar = "user\rscMessage\isabella.paa";
    object = "grad_bride";
};

class mission_02_04b_isa
{
    name = "mission_02_04b_isa";
    sound[] = { "USER\sounds\mission_02_04b_isa.ogg", 2, 1, 100 };
    titles[] = {0, ""};
    customsubtitle[] = {
        0, "Isabella: Marco, if this is another one of your tricks to escape me, I will lose myself!"
    };
    duration = 4;
    avatar = "user\rscMessage\isabella.paa";
    object = "grad_bride";
};

class mission_02_05_marco
{
    name = "mission_02_05_marco";
    sound[] = { "USER\sounds\mission_02_05_marco.ogg", 2, 1, 100 };
    titles[] = {0, ""};
    customsubtitle[] = {
        0, "Marco: Baby, I can't get married without ID! Legally, I don't exist right now! Plus our guards want to be paid in cash."
    };
    duration = 6;
    avatar = "user\rscMessage\marco.paa";
    object = "grad_groom";
};

class mission_02_06_isa
{
    name = "mission_02_06_isa";
    sound[] = { "USER\sounds\mission_02_06_isa.ogg", 2, 1, 100 };
    titles[] = {0, ""};
    customsubtitle[] = {
        0, "Isabella: You are not a guy, you are a child! A child with a trust fund! Driver! To the bank! I should have married Rico, he has no wallet to lose."
    };
    duration = 11;
    avatar = "user\rscMessage\isabella.paa";
    object = "grad_bride";
};

class mission_02_07_marco
{
    name = "mission_02_07_marco";
    sound[] = { "USER\sounds\mission_02_07_marco.ogg", 2, 1, 100 };
    titles[] = {0, ""};
    customsubtitle[] = {
        0, "Marco: Rico pays for dinner with lousy music, Isabella! I pay with Platinum American Express! We need that card!"
    };
    duration = 6;
    avatar = "user\rscMessage\marco.paa";
    object = "grad_groom";
};

class mission_02_08_isa
{
    name = "mission_02_08_isa";
    sound[] = { "USER\sounds\mission_02_08_isa.ogg", 2, 1, 100 };
    titles[] = {0, ""};
    customsubtitle[] = {
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
    titles[] = {0, ""};
    customsubtitle[] = {
        0, "Marco: Please don't! I am sure they took good care of it!"
    };
    duration = 3;
    avatar = "user\rscMessage\marco.paa";
    object = "grad_groom";
};

// reaction to robbery

class mission_02b_01_isa
{
    name = "mission_02b_01_isa";
    sound[] = { "USER\sounds\mission_02b_01_isa.ogg", 2, 1, 100 };
    titles[] = {0, ""};
    customsubtitle[] = {
        0, "Isabella: Did you hear that? That sounded like a gunshot. Marco, are we being robbed?";
    };
    duration = 7;
    avatar = "user\rscMessage\isabella.paa";
    object = "grad_bride";
};

class mission_02b_02_marco
{
    name = "mission_02b_02_marco";
    sound[] = { "USER\sounds\mission_02b_02_marco.ogg", 2, 1, 100 };
    titles[] = {0, ""};
    customsubtitle[] = {
        0, "Marco: I guess? Wonder where they are coming from all of a sudden!";
    };
    duration = 6;
    avatar = "user\rscMessage\marco.paa";
    object = "grad_groom";
};


class mission_02b_03_isa
{
    name = "mission_02b_03_isa";
    sound[] = { "USER\sounds\mission_02b_03_isa.ogg", 2, 1, 100 };
    titles[] = {0, ""};
    customsubtitle[] = {
        0, "Isabella: Hey! Shoot those fuckers and get the wallet! My husband needs his money! ¡ANDALE!";
    };
    duration = 7;
    avatar = "user\rscMessage\isabella.paa";
    object = "grad_bride";
};

// reaction to wallet
class mission_02c_01_marco
{
    name = "mission_02c_01_marco";
    sound[] = { "USER\sounds\mission_02c_01_marco.ogg", 2, 1, 100 };
    titles[] = {0, ""};
    customsubtitle[] = {
        0, "Marco: You... you found it? You are alive? Ah. I mean... wonderful news!";
    };
    duration = 6;
    avatar = "user\rscMessage\marco.paa";
    object = "grad_groom";
};

class mission_02c_02_marco
{
    name = "mission_02c_02_marco";
    sound[] = { "USER\sounds\mission_02c_02_marco.ogg", 2, 1, 100 };
    titles[] = {0, ""};
    customsubtitle[] = {
        0, "Marco: Quickly, give it to me! I must check if everything is inside!";
    };
    duration = 5;
    avatar = "user\rscMessage\marco.paa";
    object = "grad_groom";
};

class mission_02c_03_isa
{
    name = "mission_02c_03_isa";
    sound[] = { "USER\sounds\mission_02c_03_isa.ogg", 2, 1, 100 };
    titles[] = {0, ""};
    customsubtitle[] = {
        0, "Isabella: ¡BASTA! Enough! I do not care about your stupid leather square!";
    };
    duration = 5;
    avatar = "user\rscMessage\isabella.paa";
    object = "grad_bride";
};

class mission_02c_04_isa
{
    name = "mission_02c_04_isa";
    sound[] = { "USER\sounds\mission_02c_04_isa.ogg", 2, 1, 100 };
    titles[] = {0, ""};
    customsubtitle[] = {
        0, "Isabella: Mercenaries! Keep the damn wallet! I don't care! Just drive! To the Church! ¡VAMOS!";
    };
    duration = 8;
    avatar = "user\rscMessage\isabella.paa";
    object = "grad_bride";
};

class mission_02c_05_marco
{
    name = "mission_02c_05_marco";
    sound[] = { "USER\sounds\mission_02c_05_marco.ogg", 2, 1, 100 };
    titles[] = {0, ""};
    customsubtitle[] = {
        0, "Marco: But... my ID... okay. Yes. To the church.";
    };
    duration = 5;
    avatar = "user\rscMessage\marco.paa";
    object = "grad_groom";
};





// HAIR SALON - MISSION 03

class mission_03_01_marco
{
    name = "mission_03_01_marco";
    sound[] = { "USER\sounds\mission_03_01_marco.ogg", 2, 1, 100 };
    titles[] = {0, ""};
    customsubtitle[] = {
        0, "Marco: Isabella, my love... I don't want to panic you. But the humidity in this swamp... it is attacking your volume."
    };
    duration = 7;
    avatar = "user\rscMessage\marco.paa";
    object = "grad_groom";
};

class mission_03_02_isa
{
    name = "mission_03_02_isa";
    sound[] = { "USER\sounds\mission_03_02_isa.ogg", 2, 1, 100 };
    titles[] = {0, ""};
    customsubtitle[] = {
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
    titles[] = {0, ""};
    customsubtitle[] = {
        0, "Marco: A little bit... puffy. But look! We are passing 'Nano Banana'. Pierre's famous hair salon! We can stop there."
    };
    duration = 7;
    avatar = "user\rscMessage\marco.paa";
    object = "grad_groom";
};

class mission_03_04_isa
{
    name = "mission_03_04_isa";
    sound[] = { "USER\sounds\mission_03_04_isa.ogg", 2, 1, 100 };
    titles[] = {0, ""};
    customsubtitle[] = {
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
    titles[] = {0, ""};
    customsubtitle[] = {
        0, "Marco: He is a visionary! He invented the 'Tropical Freeze' blowout. Let Pierre work his magic."
    };
    duration = 6;
    avatar = "user\rscMessage\marco.paa";
    object = "grad_groom";
};

class mission_03_06_isa
{
    name = "mission_03_06_isa";
    sound[] = { "USER\sounds\mission_03_06_isa.ogg", 2, 1, 100 };
    titles[] = {0, ""};
    customsubtitle[] = {
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
    titles[] = {0, ""};
    customsubtitle[] = {
        0, "Marco: Yes, yes. Wonderful. You go inside, mi amor. Go. Quickly. I will... wait in the car."
    };
    duration = 6;
    avatar = "user\rscMessage\marco.paa";
    object = "grad_groom";
};

class mission_03_08_isa
{
    name = "mission_03_08_isa";
    sound[] = { "USER\sounds\mission_03_08_isa.ogg", 2, 1, 100 };
    titles[] = {0, ""};
    customsubtitle[] = {
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
    titles[] = {0, ""};
    customsubtitle[] = {
        0, "Marco: I cannot. I... I want to surprise you. And I am allergic to the... banana conditioners."
    };
    duration = 7;
    avatar = "user\rscMessage\marco.paa";
    object = "grad_groom";
};

class mission_03_10_isa
{
    name = "mission_03_10_isa";
    sound[] = { "USER\sounds\mission_03_10_isa.ogg", 2, 1, 100 };
    titles[] = {0, ""};
    customsubtitle[] = {
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
    titles[] = {0, ""};
    customsubtitle[] = {
        0, "Marco: Okay... she is inside. Now its waiting time."
    };
    duration = 7;
    avatar = "user\rscMessage\marco.paa";
    object = "grad_groom";
};


class mission_03b_01_isa {
    name = "mission_03b_01_isa";
    sound[] = { "USER\sounds\mission_03b_01_isa.ogg", 2, 1, 100 };
    titles[] = {0, ""};
    customsubtitle[] = {
        0, "Isabella: Hey, can you do the killing a bit more quietly? Pierre is pissing himself already!"
    };
    duration = 6;
    avatar = "user\rscMessage\isabella.paa";
    object = "grad_bride";
};

class mission_03b_02_isa {
    name = "mission_03b_02_isa";
    sound[] = { "USER\sounds\mission_03b_02_isa.ogg", 2, 1, 100 };
    titles[] = {0, ""};
    customsubtitle[] = {
        0, "Isabella: Keep those fuckers away from me. I need Pierre to finish his job!"
    };
    duration = 5;
    avatar = "user\rscMessage\isabella.paa";
    object = "grad_bride";
};

class mission_03b_03_isa {
    name = "mission_03b_03_isa";
    sound[] = { "USER\sounds\mission_03b_03_isa.ogg", 2, 1, 100 };
    titles[] = {0, ""};
    customsubtitle[] = {
        0, "Isabella: Pierre, stop hiding, finish my coiffure!"
    };
    duration = 4;
    avatar = "user\rscMessage\isabella.paa";
    object = "grad_bride";
};

// PHOTO 2 SWAMP - MISSION 04

class mission_04_01_marco
{
    name = "mission_04_01_marco";
    sound[] = { "USER\sounds\mission_04_01_marco.ogg", 2, 1, 100 };
    titles[] = {0, ""};
    customsubtitle[] = {
        0, "Marco: Driver! Halt! Look at the mist over the water. Do you recognize this smell, my angel?"
    };
    duration = 5;
    avatar = "user\rscMessage\marco.paa";
    object = "grad_groom";
};

class mission_04_02_isa
{
    name = "mission_04_02_isa";
    sound[] = { "USER\sounds\mission_04_02_isa.ogg", 2, 1, 100 };
    titles[] = {0, ""};
    customsubtitle[] = {
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
    titles[] = {0, ""};
    customsubtitle[] = {
        0, "Marco: This is the Mangrove of Ecstasy! This is where we first... connected. Physically. In the mud."
    };
    duration = 7;
    avatar = "user\rscMessage\marco.paa";
    object = "grad_groom";
};

class mission_04_04_isa
{
    name = "mission_04_04_isa";
    sound[] = { "USER\sounds\mission_04_04_isa.ogg", 2, 1, 100 };
    titles[] = {0, ""};
    customsubtitle[] = {
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
    titles[] = {0, ""};
    customsubtitle[] = {
        0, "Marco: It was primal! It was wild! We need to recreate the magic. Just one photo by the water's edge."
    };
    duration = 6;
    avatar = "user\rscMessage\marco.paa";
    object = "grad_groom";
};

class mission_04_06_isa
{
    name = "mission_04_06_isa";
    sound[] = { "USER\sounds\mission_04_06_isa.ogg", 2, 1, 100 };
    titles[] = {0, ""};
    customsubtitle[] = {
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
    titles[] = {0, ""};
    customsubtitle[] = {
        0, "Marco: But look at that sunlight. It will make your skin look like caramel. Think of the hashtag. #SwampQueen."
    };
    duration = 6;
    avatar = "user\rscMessage\marco.paa";
    object = "grad_groom";
};  

class mission_04_08_isa
{
    name = "mission_04_08_isa";
    sound[] = { "USER\sounds\mission_04_08_isa.ogg", 2, 1, 100 };
    titles[] = {0, ""};
    customsubtitle[] = {
        0, "Isabella: ...#SwampQueen? Is that trending? The light *is* very flattering..."
    };
    duration = 7;
    avatar = "user\rscMessage\isabella.paa";
    object = "grad_bride";
};

class mission_04_09_isa
{
    name = "mission_04_09_isa";
    sound[] = { "USER\sounds\mission_04_09_isa.ogg", 2, 1, 100 };
    titles[] = {0, ""};
    customsubtitle[] = {
        0, "Isabella: Fine! But hurry up before the mosquitoes find us!"
    };
    duration = 5;
    avatar = "user\rscMessage\isabella.paa";
    object = "grad_bride";
};

class mission_04_10_isa
{
    name = "mission_04_10_isa";
    sound[] = { "USER\sounds\mission_04_10_isa.ogg", 2, 1, 100 };
    titles[] = {0, ""};
    customsubtitle[] = {
        0, "Isabella: Let the driver take the photo again!"
    };
    duration = 3;
    avatar = "user\rscMessage\isabella.paa";
    object = "grad_bride";
};


// CHURCH SCENE - MISSION 05

class mission_05_01_priest
{
    name = "mission_05_01_priest";
    sound[] = { "USER\sounds\mission_05_01_priest.ogg", 2, 1, 100 };
    titles[] = {0, ""};
    customsubtitle[] = {
        0, "Priest Santorum: Ah, Isabella! My child! You are... late. Very late. The guests are getting restless."
    };
    duration = 10.5;
    avatar = "user\rscMessage\priest.paa";
    object = "grad_priest";
};

class mission_05_02_isa
{
    name = "mission_05_02_isa";
    sound[] = { "USER\sounds\mission_05_02_isa.ogg", 2, 1, 100 };
    titles[] = {0, ""};
    customsubtitle[] = {
        0, "Isabella: Oh Father, relax. A queen is never late, everyone else is just early. Look at me! Is the dress not divine!?"
    };
    duration = 8;
    avatar = "user\rscMessage\isabella.paa";
    object = "grad_bride";
};

class mission_05_03_marco
{
    name = "mission_05_03_marco";
    sound[] = { "USER\sounds\mission_05_03_marco.ogg", 2, 1, 100 };
    titles[] = {0, ""};
    customsubtitle[] = {
        0, "Marco: Wait! We must document this moment. The bride and the holy man! Perfect for the album."
    };
    duration = 6;
    avatar = "user\rscMessage\marco.paa";
    object = "grad_groom";
};

class mission_05_04_isa
{
    name = "mission_05_04_isa";
    sound[] = { "USER\sounds\mission_05_04_isa.ogg", 2, 1, 100 };
    titles[] = {0, ""};
    customsubtitle[] = {
        0, "Isabella: Driver! Take a photo of us! And then we will finally have our wedding!"
    };
    duration = 3;
    avatar = "user\rscMessage\isabella.paa";
    object = "grad_bride";
};

class mission_05_05_isa
{
    name = "mission_05_05_isa";
    sound[] = { "USER\sounds\mission_05_05_isa.ogg", 2, 1, 100 };
    titles[] = {0, ""};
    customsubtitle[] = {
        0, "Isabella: SMILE!"
    };
    duration = 2;
    avatar = "user\rscMessage\isabella.paa";
    object = "grad_bride";
};




class mission_05b_01_isa
{
    name = "mission_05b_01_isa";
    sound[] = { "USER\sounds\mission_05b_01_isa.ogg", 2, 1, 100 };
    titles[] = {0, ""};
    customsubtitle[] = {
        0, "Isabella: Dios mio! Father Santorum! ... All that blood!"
    };
    duration = 6;
    avatar = "user\rscMessage\isabella.paa";
    object = "grad_bride";
};

class mission_05b_02_isa
{
    name = "mission_05b_02_isa";
    sound[] = { "USER\sounds\mission_05b_02_isa.ogg", 2, 1, 100 };
    titles[] = {0, ""};
    customsubtitle[] = {
        0, "Isabella: Who the fuck dares to meddle with MY wedding?!!"
    };
    duration = 5;
    avatar = "user\rscMessage\isabella.paa";
    object = "grad_bride";
};

class mission_05b_03_isa
{
    name = "mission_05b_03_isa";
    sound[] = { "USER\sounds\mission_05b_03_isa.ogg", 2, 1, 100 };
    titles[] = {0, ""};
    customsubtitle[] = {
        0, "Isabella: Find the assassin you useless fucks!"
    };
    duration = 4;
    avatar = "user\rscMessage\isabella.paa";
    object = "grad_bride";
};

class mission_05b_04_isa
{
    name = "mission_05b_04_isa";
    sound[] = { "USER\sounds\mission_05b_04_isa.ogg", 2, 1, 100 };
    titles[] = {0, ""};
    customsubtitle[] = {
        0, "Isabella: Dios mio! Where is Marco?! Did he...? Hijo de puta, I will kill him!"
    };
    duration = 9;
    avatar = "user\rscMessage\isabella.paa";
    object = "grad_bride";
};


// FINALE MISSION 06 - MANSION

class mission_06_01_isa
{
    name = "mission_06_01_isa";
    sound[] = { "USER\sounds\mission_06_01_isa.ogg", 2, 1, 100 };
    titles[] = {0, ""};
    customsubtitle[] = {
        0, "Isabella: Seems like the wedding is cancelled. Take me to the mansion. I have a husband to butcher."
    };
    duration = 7;
    avatar = "user\rscMessage\isabella.paa";
    object = "grad_bride";
};

class mission_06_02_isa
{
    name = "mission_06_02_isa";
    sound[] = { "USER\sounds\mission_06_02_isa.ogg", 2, 1, 100 };
    titles[] = {0, ""};
    customsubtitle[] = {
        0, "Isabella: To the mansion! Driver! I know he is there counting my fathers money! VAMOS!"
    };
    duration = 7;
    avatar = "user\rscMessage\isabella.paa";
    object = "grad_bride";
};


class mission_06b_01_isa
{
    name = "mission_06b_01_isa";
    sound[] = { "USER\sounds\mission_06b_01_isa.ogg", 2, 1, 100 };
    titles[] = {0, ""};
    customsubtitle[] = {
        0, "Isabella: MARCO! You pathetic little gusano! When I find you, I will rip your heart out with my manicured nails!"
    };
    duration = 9;
    avatar = "user\rscMessage\isabella.paa";
    object = "grad_bride";
};

class mission_06b_01_marco
{
    name = "mission_06b_01_marco";
    sound[] = { "USER\sounds\mission_06b_01_marco.ogg", 2, 1, 100 };
    titles[] = {0, ""};
    customsubtitle[] = {
        0, "Marco: I can hear her screaming from here. She sounds like a chainsaw in a silk dress."
    };
    duration = 4;
    avatar = "user\rscMessage\marco.paa";
    object = "grad_groom";
};

class mission_06b_02_isa
{
    name = "mission_06b_02_isa";
    sound[] = { "USER\sounds\mission_06b_02_isa.ogg", 2, 1, 100 };
    titles[] = {0, ""};
    customsubtitle[] = {
        0, "Isabella: That cheap, lying cabrón! He thinks he can hide? I will burn this entire island down to find him!"
    };
    duration = 8;
    avatar = "user\rscMessage\isabella.paa";
    object = "grad_bride";
};

class mission_06b_02_marco
{
    name = "mission_06b_02_marco";
    sound[] = { "USER\sounds\mission_06b_02_marco.ogg", 2, 1, 100 };
    titles[] = {0, ""};
    customsubtitle[] = {
        0, "Marco: Keep that crazy woman away from me! "
    };
    duration = 3;
    avatar = "user\rscMessage\marco.paa";
    object = "grad_groom";
};

class mission_06b_03_isa
{
    name = "mission_06b_03_isa";
    sound[] = { "USER\sounds\mission_06b_03_isa.ogg", 2, 1, 100 };
    titles[] = {0, ""};
    customsubtitle[] = {
        0, "Isabella: I swear on my mother’s grave, Marco is a dead man! A dead, stupid, ugly man! Pendejo!"
    };
    duration = 8;
    avatar = "user\rscMessage\isabella.paa";
    object = "grad_bride";
};

class mission_06b_03_marco
{
    name = "mission_06b_03_marco";
    sound[] = { "USER\sounds\mission_06b_03_marco.ogg", 2, 1, 100 };
    titles[] = {0, ""};
    customsubtitle[] = {
        0, "Marco: How is she still coming?! She is like the Terminator in high heels!"
    };
    duration = 4;
    avatar = "user\rscMessage\marco.paa";
    object = "grad_groom";
};

class mission_06b_04_marco
{
    name = "mission_06b_04_marco";
    sound[] = { "USER\sounds\mission_06b_04_marco.ogg", 2, 1, 100 };
    titles[] = {0, ""};
    customsubtitle[] = {
        0, "Marco: Why wont she just die?!"
    };
    duration = 4;
    avatar = "user\rscMessage\marco.paa";
    object = "grad_groom";
};

class mission_06b_05_isa_alligators
{
    name = "mission_06b_05_isa_alligators";
    sound[] = { "USER\sounds\mission_06b_05_isa_alligators.ogg", 2, 1, 100 };
    titles[] = {0, ""};
    customsubtitle[] = {
        0, "Isabella: I will cut off your cojones and feed them to the alligators! Hijo de puta!"
    };
    duration = 6;
    avatar = "user\rscMessage\isabella.paa";
    object = "grad_bride";
};

class mission_06b_05_marco_alligators
{
    name = "mission_06b_05_marco_alligators";
    sound[] = { "USER\sounds\mission_06b_05_marco_alligators.ogg", 2, 1, 100 };
    titles[] = {0, ""};
    customsubtitle[] = {
        0, "Marco: Did you hear what she said? She wants to feed my 'parts' to the alligators! Who says that?! That is not a wife, that is a war crime! Shoot her!"
    };
    duration = 8;
    avatar = "user\rscMessage\marco.paa";
    object = "grad_groom";
};

class mission_06b_06_isa
{
    name = "mission_06b_06_isa";
    sound[] = { "USER\sounds\mission_06b_06_isa.ogg", 2, 1, 100 };
    titles[] = {0, ""};
    customsubtitle[] = {
        0, "Isabella: Where are you, Marco, I want to fuck with you. In a very bloody way!"
    };
    duration = 6;
    avatar = "user\rscMessage\isabella.paa";
    object = "grad_bride";
};

class mission_06b_06_marco
{
    name = "mission_06b_06_marco";
    sound[] = { "USER\sounds\mission_06b_06_marco.ogg", 2, 1, 100 };
    titles[] = {0, ""};
    customsubtitle[] = {
        0, "Marco: Oh god, she is getting closer. I can feel it. Stop her!"
    };
    duration = 3;
    avatar = "user\rscMessage\marco.paa";
    object = "grad_groom";
};

class mission_06b_07_marco
{
    name = "mission_06b_07_marco";
    sound[] = { "USER\sounds\mission_06b_07_marco.ogg", 2, 1, 100 };
    titles[] = {0, ""};
    customsubtitle[] = {
        0, "Marco: Don't let her in! She will peel my face off!";
    };
    duration = 3;
    avatar = "user\rscMessage\marco.paa";
    object = "grad_groom";
};


class mission_07_01_donhector
{
    name = "mission_07_01_donhector";
    sound[] = { "USER\sounds\mission_07_01_donhector.ogg", 2, 1, 100 };
    titles[] = {0, ""};
    customsubtitle[] = {
        0, "Don Hector: ION Control... This is Don Hector. I am looking at the drone feed. I see Marco is dead. Good."
    };
    duration = 9;
    avatar = "user\rscMessage\donhector.paa";
    object = "";
};

class mission_07_02_donhector
{
    name = "mission_07_02_donhector";
    sound[] = { "USER\sounds\mission_07_02_donhector.ogg", 2, 1, 100 };
    titles[] = {0, ""};
    customsubtitle[] = {
        0, "Don Hector: But... I also see my Isabella. She is not moving. You let my little flower... wither."
    };
    duration = 9;
    avatar = "user\rscMessage\donhector.paa";
    object = "";
};

class mission_07_03_donhector
{
    name = "mission_07_03_donhector";
    sound[] = { "USER\sounds\mission_07_03_donhector.ogg", 2, 1, 100 };
    titles[] = {0, ""};
    customsubtitle[] = {
        0, "Don Hector: I paid you for protection. I paid for professionalism. You have failed the contract. There will be no extraction."
    };
    duration = 9;
    avatar = "user\rscMessage\donhector.paa";
    object = "";
};

class mission_07_04_donhector
{
    name = "mission_07_04_donhector";
    sound[] = { "USER\sounds\mission_07_04_donhector.ogg", 2, 1, 100 };
    titles[] = {0, ""};
    customsubtitle[] = {
        0, "Don Hector: I have sent my personal guard to process your termination. Try to smile for the drone when you die."
    };
    duration = 7;
    avatar = "user\rscMessage\donhector.paa";
    object = "";
};





class church_letsgo_1
{
    name = "church_letsgo_1";
    sound[] = { "USER\sounds\church_letsgo_1.ogg", 2, 1, 100 };
    titles[] = {0, ""};
    customsubtitle[] = {
        0, "Isabella: Can we please go to the Church? VAMOS!"
    };
    duration = 4;
    avatar = "user\rscMessage\isabella.paa";
    object = "grad_bride";
};

class church_letsgo_2
{
    name = "church_letsgo_2";
    sound[] = { "USER\sounds\church_letsgo_2.ogg", 2, 1, 100 };
    titles[] = {0, ""};
    customsubtitle[] = {
        0, "Isabella: Driver, to the Church!"
    };
    duration = 3;
    avatar = "user\rscMessage\isabella.paa";
    object = "grad_bride";
};

class church_letsgo_3
{
    name = "church_letsgo_3";
    sound[] = { "USER\sounds\church_letsgo_3.ogg", 2, 1, 100 };
    titles[] = {0, ""};
    customsubtitle[] = {
        0, "Isabella: Wonderful shooting. Very masculine. Now, do your job and drive us to the altar. We are late!"
    };
    duration = 8;
    avatar = "user\rscMessage\isabella.paa";
    object = "grad_bride";
};

class church_letsgo_4
{
    name = "church_letsgo_4";
    sound[] = { "USER\sounds\church_letsgo_4.ogg", 2, 1, 100 };
    titles[] = {0, ""};
    customsubtitle[] = {
        0, "Isabella: Enough sightseeing! The priest is waiting, the guests are waiting, and I am sweating! To the Church!"
    };
    duration = 8;
    avatar = "user\rscMessage\isabella.paa";
    object = "grad_bride";
};

class church_letsgo_5
{
    name = "church_letsgo_5";
    sound[] = { "USER\sounds\church_letsgo_5.ogg", 2, 1, 100 };
    titles[] = {0, ""};
    customsubtitle[] = {
        0, "Isabella: Lets proceed to the church!"
    };
    duration = 3;
    avatar = "user\rscMessage\isabella.paa";
    object = "grad_bride";
};

class church_letsgo_6
{
    name = "church_letsgo_6";
    sound[] = { "USER\sounds\church_letsgo_6.ogg", 2, 1, 100 };
    titles[] = {0, ""};
    customsubtitle[] = {
        0, "Isabella: What are you waiting for, to the church!"
    };
    duration = 3;
    avatar = "user\rscMessage\isabella.paa";
    object = "grad_bride";
};



class notsofast_1
{
    name = "notsofast_1";
    sound[] = { "USER\sounds\notsofast_1.ogg", 2, 1, 100 };
    titles[] = {0, ""};
    customsubtitle[] = {
        0, "Isabella: Not so fast! My champagne spills over!"
    };
    duration = 4;
    avatar = "user\rscMessage\isabella.paa";
    object = "grad_bride";
};


class notsofast_2
{
    name = "notsofast_2";
    sound[] = { "USER\sounds\notsofast_2.ogg", 2, 1, 100 };
    titles[] = {0, ""};
    customsubtitle[] = {
        0, "Isabella: Drive slower you maniacs!"
    };
    duration = 3;
    avatar = "user\rscMessage\isabella.paa";
    object = "grad_bride";
};

class notsofast_3
{
    name = "notsofast_3";
    sound[] = { "USER\sounds\notsofast_3.ogg", 2, 1, 100 };
    titles[] = {0, ""};
    customsubtitle[] = {
        0, "Isabella: Can we please have some solemn driving?! I will report this to Pa!"
    };
    duration = 5;
    avatar = "user\rscMessage\isabella.paa";
    object = "grad_bride";
};


class bride_takepic_01
{
    name = "bride_takepic_01";
    sound[] = { "USER\sounds\bride_takepic_01.ogg", 2, 1, 100 };
    titles[] = {0, ""};
    customsubtitle[] = {
        0, "Isabella: Driver, take the picture already!"
    };
    duration = 4;
    avatar = "user\rscMessage\isabella.paa";
    object = "grad_bride";
};

class bride_takepic_02
{
    name = "bride_takepic_02";
    sound[] = { "USER\sounds\bride_takepic_02.ogg", 2, 1, 100 };
    titles[] = {0, ""};
    customsubtitle[] = {
        0, "Isabella: Take the picture, what are you waiting for?"
    };
    duration = 3;
    avatar = "user\rscMessage\isabella.paa";
    object = "grad_bride";
};

class bride_takepic_03
{
    name = "bride_takepic_03";
    sound[] = { "USER\sounds\bride_takepic_03.ogg", 2, 1, 100 };
    titles[] = {0, ""};
    customsubtitle[] = {
        0, "Isabella: We wanted a photo, quick!"
    };
    duration = 3;
    avatar = "user\rscMessage\isabella.paa";
    object = "grad_bride";
};

class ricoreaction_01
{
    name = "ricoreaction_01";
    sound[] = { "USER\sounds\ricoreaction_01.ogg", 2, 1, 100 };
    titles[] = {0, ""};
    customsubtitle[] = {
        0, "Isabella: Oh, that song was nice, Marco, admit it."
    };
    duration = 4;
    avatar = "user\rscMessage\isabella.paa";
    object = "grad_bride";
};

class ricoreaction_02
{
    name = "ricoreaction_02";
    sound[] = { "USER\sounds\ricoreaction_02.ogg", 2, 1, 100 };
    titles[] = {0, ""};
    customsubtitle[] = {
        0, "Marco: No comment, Isabella."
    };
    duration = 3;
    avatar = "user\rscMessage\marco.paa";
    object = "grad_groom";
};


class ricosdeath_01
{
    name = "ricosdeath_01";
    sound[] = { "USER\sounds\ricosdeath_01.ogg", 2, 1, 100 };
    titles[] = {0, ""};
    customsubtitle[] = {
        0, "Isabella: Rico! No! ... Ay, pobrecito."
    };
    duration = 6;
    avatar = "user\rscMessage\isabella.paa";
    object = "grad_bride";
};

class ricosdeath_02
{
    name = "ricosdeath_02";
    sound[] = { "USER\sounds\ricosdeath_02.ogg", 2, 1, 100 };
    titles[] = {0, ""};
    customsubtitle[] = {
        0, "Isabella: He always said he would take a bullet for me. I just didn't think he would be so literal."
    };
    duration = 6;
    avatar = "user\rscMessage\isabella.paa";
    object = "grad_bride";
};

class ricosdeath_03
{
    name = "ricosdeath_03";
    sound[] = { "USER\sounds\ricosdeath_03.ogg", 2, 1, 100 };
    titles[] = {0, ""};
    customsubtitle[] = {
        0, "Isabella: It is tragic... but kind of hot, no?"
    };
    duration = 5;
    avatar = "user\rscMessage\isabella.paa";
    object = "grad_bride";
};


class gimmegun_01 
{
    name = "gimmegun_01";
    sound[] = { "USER\sounds\gimmegun_01.ogg", 2, 1, 100 };
    titles[] = {0, ""};
    customsubtitle[] = {
        0, "Isabella: Give me a gun! Not the little pistol, give me the big one with the belt! I want to shoot something!"
    };
    duration = 7;
    avatar = "user\rscMessage\isabella.paa";
    object = "grad_bride";
};

class gimmegun_02
{
    name = "gimmegun_02";
    sound[] = { "USER\sounds\gimmegun_02.ogg", 2, 1, 100 };
    titles[] = {0, ""};
    customsubtitle[] = {
        0, "Isabella: You shoot like a grandma! Give me that rifle! I will kill that son of a bitch myself!"
    };
    duration = 7;
    avatar = "user\rscMessage\isabella.paa";
    object = "grad_bride";
};

class gimmegun_03
{
    name = "gimmegun_03";
    sound[] = { "USER\sounds\gimmegun_03.ogg", 2, 1, 100 };
    titles[] = {0, ""};
    customsubtitle[] = {
        0, "Isabella: Pass me a weapon! I am not a damsel, I am a Rodriguez! Give it to me!"
    };
    duration = 7;
    avatar = "user\rscMessage\isabella.paa";
    object = "grad_bride";
};

class gimmegun_04
{
    name = "gimmegun_04";
    sound[] = { "USER\sounds\gimmegun_04.ogg", 2, 1, 100 };
    titles[] = {0, ""};
    customsubtitle[] = {
        0, "Isabella: Why is nobody giving me a gun?!"
    };
    duration = 4;
    avatar = "user\rscMessage\isabella.paa";
    object = "grad_bride";
};


class rico_silent
{
    name = "rico_silent";
    sound[] = { "", 2, 1, 100 };
    titles[] = {0, ""};
    duration = 4;
    avatar = "user\rscMessage\rico.paa";
    object = "grad_rico";
};


class yes_1
{
    name = "yes_1";
    sound[] = { "USER\sounds\yes_1.ogg", 2, 1, 100 };
    titles[] = {0, ""};
    customsubtitle[] = {
        0, "Isabella: Vale, vale! Whatever! Just make it happen!"
    };
    duration = 4;
    avatar = "user\rscMessage\isabella.paa";
    object = "grad_bride";
};

class yes_2
{
    name = "yes_2";
    sound[] = { "USER\sounds\yes_2.ogg", 2, 1, 100 };
    titles[] = {0, ""};
    customsubtitle[] = {
        0, "Isabella: ¡Sí! Yes!"
    };
    duration = 2;
    avatar = "user\rscMessage\isabella.paa";
    object = "grad_bride";
};

class yes_3
{
    name = "yes_3";
    sound[] = { "USER\sounds\yes_3.ogg", 2, 1, 100 };
    titles[] = {0, ""};
    customsubtitle[] = {
        0, "Isabella: Bueno. It is... acceptable. Proceed."
    };
    duration = 4;
    avatar = "user\rscMessage\isabella.paa";
    object = "grad_bride";
};

class yes_4
{
    name = "yes_4";
    sound[] = { "USER\sounds\yes_4.ogg", 2, 1, 100 };
    titles[] = {0, ""};
    customsubtitle[] = {
        0, "Isabella: ¡Claro que sí! Of course! Why are you asking? Just do it!"
    };
    duration = 5;
    avatar = "user\rscMessage\isabella.paa";
    object = "grad_bride";
};


class no_1
{
    name = "no_1";
    sound[] = { "USER\sounds\no_1.ogg", 2, 1, 100 };
    titles[] = {0, ""};
    customsubtitle[] = {
        0, "Isabella: ¡Ay, fuchi! No! Absolutely not!"
    };
    duration = 4;
    avatar = "user\rscMessage\isabella.paa";
    object = "grad_bride";
};

class no_2
{
    name = "no_2";
    sound[] = { "USER\sounds\no_2.ogg", 2, 1, 100 };
    titles[] = {0, ""};
    customsubtitle[] = {
        0, "Isabella: ¡Ni muerta! No!"
    };
    duration = 3;
    avatar = "user\rscMessage\isabella.paa";
    object = "grad_bride";
};

class no_3
{
    name = "no_3";
    sound[] = { "USER\sounds\no_3.ogg", 2, 1, 100 };
    titles[] = {0, ""};
    customsubtitle[] = {
        0, "Isabella: Please. No. Don't be stupid!"
    };
    duration = 4;
    avatar = "user\rscMessage\isabella.paa";
    object = "grad_bride";
};

class no_4
{
    name = "no_4";
    sound[] = { "USER\sounds\no_4.ogg", 2, 1, 100 };
    titles[] = {0, ""};
    customsubtitle[] = {
        0, "Isabella: No! NO!"
    };
    duration = 3;
    avatar = "user\rscMessage\isabella.paa";
    object = "grad_bride";
};

/*

// wallet reaction

[Spanish accent] [surprised] [disappointed] You... you found it? You are alive? Ah. I mean... wonderful news!
[Spanish accent] [urgent] [greedy] Quickly, give it to me! I must check if everything is inside!
[Spanish accent] [interrupting] [furious scream]¡BASTA! Enough! I do not care about your stupid leather square!
[Spanish accent] [interrupting] [furious scream]Mercenaries! Keep the damn wallet! I don't care! Just drive! To the Church! ¡VAMOS!
[Spanish accent][resignating]But... my ID... okay. Yes. To the church.



// robbery reaction

[Spanish accent] [shouting] [annoyed]Did you hear that? That sounded like a gunshot. Marco, are we being robbed?
[Spanish accent] [shouting][lying bad] I guess? Wonder where they are coming from all of a sudden!
[Spanish accent][yelling] Hey! Shoot those fuckers and get the wallet! My husband needs his money! ¡ANDALE!



YES/NO

[Spanish accent] [shouting] [annoyed] Vale, vale! Whatever! Just make it happen!
[Spanish accent] [shouting] [excited] ¡Sí! Yes!
[Spanish accent] [shouting] [thoughtful] Bueno. It is... acceptable. Proceed.
[Spanish accent] [shouting] [impatient] ¡Claro que sí! Of course! Why are you asking? Just do it!

---

[Spanish accent][shouting]¡Ay, fuchi! No! Absolutely not!
[Spanish accent][shouting]¡Ni muerta! No!
[Spanish accent][shouting]Please. No. Don't be stupid!
[Spanish accent][shouting]No! NO!



// reaction to ricos death

Rico! No! ... [sighs] Ay, pobrecito. He always said he would take a bullet for me. I just didn't think he would be so literal. It is tragic... [seducing] but kind of hot, no?

// hairdresser

[Spanish accent]  [shouting] Hey! CAN YOU DO THE KILLING A BIT MORE QUIEtLY? PIERRE IS PISSING HIMSELF ALREADY!
[Spanish accent]  [shouting] Keep those fuckers away from me. I need Pierre to finish his job!
[Spanish accent] [shouting] Pierre, stop hiding, FINISH MY COIFFURE!

// marco reacting to isa in villa

[Spanish accent] [panicked] I can hear her screaming from here! She sounds like a chainsaw in a silk dress!
[Spanish accent] [desperate] [pleading] Keep that crazy woman away from me! 
[Spanish accent] [terrified] How is she still coming?! She is like the Terminator in high heels! Why won't she just die?!
[Spanish accent] [hysterical] [crying] Did you hear what she said? She wants to feed my 'parts' to the alligators! Who says that?! That is not a wife, that is a war crime! Shoot her!
[Spanish accent] [disbelief] [scared] Oh god, she is getting closer. I can feel it. Stop her!
[Spanish accent] [terrified] Don't let her in! She will peel my face off!

// taunting marco at villa

[Spanish accent] [pure rage] [screaming] MARCO! You pathetic little gusano! When I find you, I will rip your heart out with my manicured nails!
[Spanish accent] [hysterically angry] I will cut off your cojones and feed them to the alligators! Hijo de puta!
[Spanish accent] [venomous] [dark], That cheap, lying cabrón! He thinks he can hide? I will burn this entire island down to find him!
[Spanish accent] [screaming] [crying] I swear on my mother’s grave, Marco is a dead man! A dead, stupid, ugly man! Pendejo! [Spanish accent] [bloodthirsty] [yelling] Marco! You are finished! I will strangle you with my veil, you son of a bitch!
[Spanish accent] [bloodthirsty] [yelling] Where are you, Marco, I want to fuck with you. In a very bloody way!

// reaction to asssassin

[Spanish accent] [shocked] [gasps] [disbelief to rage] Dios mio! Father Santorum! ... All that blood! [pauses] [shouting] Who the fuck dares to meddle with MY wedding?!!
[Spanish accent] [shocked]  [disbelief to rage] FIND THE ASSASSIN YOU USELESS FUCKS!
[Spanish accent] [shocked]Dios mio! [suspicious]Where is Marco?! Did he...? [screaming][rage] HIJO DE PUTA, I WILL KILL HIM!!


// to the mansion

[Spanish accent] [cold fury] [determined], Seems like the wedding is cancelled. Take me to the mansion. I have a husband to butcher.
[Spanish accent] [shouting] To the mansion! Driver! I know he is there counting my fathers money! VAMOS!

// --- WEAPON DEMANDS - GENERIC
[intense] Give me a gun! [demanding] Not the little pistol, give me the big one with the belt! I want to shoot something!
[frustrated] You shoot like a grandma! [annoyed] Give me that rifle! I will kill that son of a bitch myself!
[laughing] I don't care about safety! [crazy] Give me a grenade! I want to throw it at his face!
[shouting] Pass me a weapon! I am not a damsel, I am a Rodriguez! Give it to me!
[angry] Why is nobody giving me a gun?! [exhales sharply] I need to reload my anger! Hand it over!

*/



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