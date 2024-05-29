
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
        
        load "data/3FE3.pdb", protein
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
 
        load "data/3FE3.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1136,115,117,708,710,714,717,550,549,696,1293,1294,113,1220,1203,1209,1212,548,1213,1219,1221,542,547,1288,1224,1240,1241,1245,174,293,1273,292,670,289,691,689,685,687,172,173,276,475,476,477,1242,1246,408,437,439,444,471,473,411,442,1274,1272,738,741,1137,730,1104,1102,1106] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [3710,3711,3709,3813,3928,3351,3738,3896,2711,2713,3893,2709,3340,3814,3815,2894,2895,3820,3821,2766,2767,2768,3886,3889,3895,3087,2891,3327,3324,3318,3320,3737,3297,3306,2878,3301,3159,3160] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [3350,3705,1318,3366,3376,3713,3714,3984,3972,4235,3364,3368,3952,3954,3982,1315,1342,1313,1314,1316,1317,1319,4262,4261,3949,3951,3948] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [1371,1634,3912,1382,757,758,754,755,756,759,3919,3920,3911,3943,1095,1351] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [3683,1682,3663,3834,3835,3680,3658,3045,3839,3840,3848,3849,3852,3853,3854,3836,3837,3860,1708,1705,1697,3672,3673,3651] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [2260,2483,508,510,2482,2458,2262,2263,2484,2485,2570,558,559,507,2238] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [1381,1383,1595,747,753,1092,1126,1129,1085] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [950,951,519,2219,2200,923,534,927,526,2221,918,922,914,913,915,2195,2197] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [3984,3365,4196,3357,3730,3363,3359,3356,4168] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        