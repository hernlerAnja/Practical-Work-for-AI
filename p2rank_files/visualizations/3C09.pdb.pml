
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
        
        load "data/3C09.pdb", protein
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
 
        load "data/3C09.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [7823,7654,7872,7875,7886,7858,7976,8035,7975,8012,7824,7871,8016,8076,8075,8032,8319,7812] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.322,0.702]
select surf_pocket2, protein and id [6931,6932,5417,5418,5352,5424,5428,5345,5335,5638,5639,5640,6656,6658,6659,5346,5341,5336,5339,6922,6925,6670,6671,6662,6666,6921,6920,6883,5348,5406,6933,6941,6942,6943,5627,6847,6924,6927,6848,5443,5441,5442,6946,6947,5444,6954,6674,6673,6680] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.467,0.361,0.902]
select surf_pocket3, protein and id [5157,4206,4215,4217,4216,5158,5179,5181,4222,4020,4019,3827,3850,4022,4031,3846,3848,3852,4032,5166,5167,3828,4680,4681,4692,4693] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.490,0.278,0.702]
select surf_pocket4, protein and id [680,681,684,7941,195,197,672,7761,7763,7782,7784,7787,7952,7953,7942,7943,7940,8131,208] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.792,0.361,0.902]
select surf_pocket5, protein and id [7183,7219,7471,7492,7239,7240,7242,7241,7489,7310,7244,7284,7309,7681,7511] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.659]
select surf_pocket6, protein and id [3958,4055,3892,4054,4094,3947,4423,4140,4160,4114,4093] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.682]
select surf_pocket7, protein and id [3818,3819,3350,3351,3352,3591,3341,3342,1629,1630,3340,3165,3167] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.408]
select surf_pocket8, protein and id [2737,2739,2891,2893,2755,2756,1000,1008,2736,1218,1237,1217] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.361]
select surf_pocket9, protein and id [7768,7794,7777,7778,7570,7586,7588,7967,7966,7830,7968,7831] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.408,0.278]
select surf_pocket10, protein and id [8083,1737,8062,2302,2304,8068,8064,8155,8085,8086] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.682,0.361]
select surf_pocket11, protein and id [3195,3159,3151,3157,3208,3370,3214,3352,3212,3367,3369,3606] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.659,0.278]
select surf_pocket12, protein and id [5200,5151,4690,6458,4713,6503,5199] 
set surface_color,  pcol12, surf_pocket12 
   
        
        deselect
        
        orient
        