
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
        
        load "data/5MMF.pdb", protein
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
 
        load "data/5MMF.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1872,1873,1874,977,980,982,1044,1352,1115,957,1007,1009,1349,979,1128,1084,1087,1086,1082,1309,1310,1920,1921,1922,1334,1335,1336,1306,1308,1333,1846,1130,1866,1844,1159,1847] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [4081,4083,4084,4085,4108,3754,3756,4127,3781,3780,3820,3819,3784,3749,3752,3731,3736,4622,4648,4649,3890,4647,3893,4618] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [1441,1443,1444,1315,1343,1344,777,779,542,543,909,374,376,438,437,372,373,378,379,439,915,910,912,914,558,1445,1449,1450,1452,778,935,938,377,954,956,941,939] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [3049,3416,3454,3657,3388,3389,3390,3391,3425,3423,3426,3605,3641,3642,3658,3659,742,3025,3027,3047,3046,741,786,785,735,736,737,738,3606,3022,3026,3028,3417,3364,3365] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [3553,3552,3554,3710,4216,4219,3714,3716,4118,3713,3689,3333,3334,4220,4224,3318,3149,3709,3151,3152,3212,3214,3330,3331,3332,3213,3317,4227,4119,3729,3732,3155,3157,3148,3153,3154,3687,3685,3688,3690] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [422,423,394,397,558,1451,1288,1328,1450,1452,1303,1304,633,634,401,402,403,413,405,1476,1477,1478,575,670,406,408,410,409] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [4225,4227,4253,4251,4252,4063,3176,3177,3181,3185,3188,3409,3445,4243,4244,4246,3333,3334,4226,3183,3184,3197,3350,3198,3415,3408,3354] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [48,1758,1776,65,1764,1772,1773,1222,2643,2655,2632,2649,2654,1196] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [1176,3037,1149,1150,1151,3035,3036,762,1406,1393,1402,1405,1110,1383] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        