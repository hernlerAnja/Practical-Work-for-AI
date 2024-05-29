
        from pymol import cmd,stored
        
        set depth_cue, 1
        set fog_start, 0.4
        
        set_color b_col, [36,36,85]
        set_color t_col, [10,10,10]
        set bg_rgb_bottom, b_col
        set bg_rgb_top, t_col      
        set bg_gradient
        
        set  spec_power  =  200
        set  spec_refl   =  0
        
        load "data/4YVE.pdb", protein
        create ligands, protein and organic
        select xlig, protein and organic
        delete xlig
        
        hide everything, all
        
        color white, elem c
        color bluewhite, protein
        #show_as cartoon, protein
        show surface, protein
        #set transparency, 0.15
        
        show sticks, ligands
        set stick_color, magenta
        
        
        
        
        # SAS points
 
        load "data/4YVE.pdb_points.pdb.gz", points
        hide nonbonded, points
        show nb_spheres, points
        set sphere_scale, 0.2, points
        cmd.spectrum("b", "green_red", selection="points", minimum=0, maximum=0.7)
        
        
        stored.list=[]
        cmd.iterate("(resn STP)","stored.list.append(resi)")    # read info about residues STP
        lastSTP=stored.list[-1] # get the index of the last residue
        hide lines, resn STP
        
        cmd.select("rest", "resn STP and resi 0")
        
        for my_index in range(1,int(lastSTP)+1): cmd.select("pocket"+str(my_index), "resn STP and resi "+str(my_index))
        for my_index in range(1,int(lastSTP)+1): cmd.show("spheres","pocket"+str(my_index))
        for my_index in range(1,int(lastSTP)+1): cmd.set("sphere_scale","0.4","pocket"+str(my_index))
        for my_index in range(1,int(lastSTP)+1): cmd.set("sphere_transparency","0.1","pocket"+str(my_index))
        
        
        
        set_color pcol1 = [0.361,0.576,0.902]
select surf_pocket1, protein and id [691,692,804,1652,643,640,1284,1285,1287,1286,2912,633,634,638,2909,2911,2903,2913,2916,2920,2897,693,1234,1235,1625,1626,1653,1728,1651,1629,1733,1729,982,819,820,821,1734,1736,1087,1239,1257,1261,1262,1232,1088,646,654,655] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.365,0.702]
select surf_pocket2, protein and id [4811,4469,4472,4810,4836,4837,4838,6128,4470,4471,4486,3815,6126,6130,6137,4000,4419,3873,3874,3985,3819,3872,3814,3821,4918,4167,4914,4915,4913,4272,4424,4442,4446,4447,6129,3826,3827,3835,3836,4001,4002,4921,3824,4814] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.361,0.902]
select surf_pocket3, protein and id [87,3364,3358,3372,6364,6365,6366,3317,88,111,3370,3363,3289,3299,3300,3295,3297,6344,52,6345,51,53,6356,48,49,50,78,3371,6348,6350] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.365,0.278,0.702]
select surf_pocket4, protein and id [4124,3855,3856,3839,3843,3844,3851,3853,3860,3861,3857,3859,4018,3835,3836,3858,4001,4002,4919,4920,4921,4006,4799,4935,4937,4938,4934,4943,4119,4103,4122,3868,3999,3874] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.576,0.361,0.902]
select surf_pocket5, protein and id [662,663,669,671,673,658,674,675,676,677,654,655,1882,820,821,837,939,940,1636,1734,1596,1597,1598,1614,1735,1736,1733,693,818,825,934,935,936,1750,1751,937,1749,923,938,1753,1758,924] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.533,0.278,0.702]
select surf_pocket6, protein and id [3061,875,881,886,888,882,884,877,909,910,3553,3577,3057,3059,3060,3073,949,3071,929,938,960,3575] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.792,0.361,0.902]
select surf_pocket7, protein and id [157,3077,3082,3084,3612,959,960,961,962,963,964,956,957,958,162,3610,159,150,151,197,1002,140,142,154,155,158,144,191,3099,135,992,3109,3136,1001,1000] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.702]
select surf_pocket8, protein and id [4147,4141,4142,4144,3343,4149,429,3340,3341,3323,3336,3332,3331,3335,6310,3378,4176,4177,4186,4187,3316] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.792]
select surf_pocket9, protein and id [3196,760,780,1112,1114,778,759,1126,1127,798,797,1111,3149,1110] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.533]
select surf_pocket10, protein and id [3196,760,780,778,3195,736,759,1126,1127,3197,798] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.576]
select surf_pocket11, protein and id [3487,3488,3489,6186,6191,6202,6195,6192,3461,6264,3447,3449,4351,4354,6272,4350,3446] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.365]
select surf_pocket12, protein and id [268,1165,1166,1169,2968,306,2976,2965,2966,2967,264,265,307,308,280,3044,3047,3038,266] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.361]
select surf_pocket13, protein and id [3235,3232,3170,3172,3173,3149,3233,3230,3231,1125,3196,1127,3197] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.365,0.278]
select surf_pocket14, protein and id [15,3941,3959,3960,3961,3940,4311,4312,3977,3979] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.576,0.361]
select surf_pocket15, protein and id [2015,2555,2575,1527,2017,2576,2579,2051,1508,2585,2054] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.533,0.278]
select surf_pocket16, protein and id [3993,3786,3787,3741,3742,3743,3764,4395,3882,3883,4010,4346,4396,4374] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.792,0.361]
select surf_pocket17, protein and id [1915,2176,1628,1629,1302,2133,1913,1612,1902,1903,1904,2175] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.702,0.278]
select surf_pocket18, protein and id [39,40,41,3729,12,7,10,52,54,3723,3726,3727,3760] 
set surface_color,  pcol18, surf_pocket18 
   
        
        deselect
        
        orient
        