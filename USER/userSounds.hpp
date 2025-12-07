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