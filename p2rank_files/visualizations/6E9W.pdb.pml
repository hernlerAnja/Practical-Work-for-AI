
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
        
        load "data/6E9W.pdb", protein
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
 
        load "data/6E9W.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4342,4343,4361,4365,4366,4367,4732,4733,4734,4809,4368,4706,3771,4814,4815,4817,5997,6008,6010,3759,4807,4810,3763,3817,3765,3818,4338,3929,4168,4169,4315,4316,3946,4063,4808,3944,4320,6013] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [1236,1241,1631,2893,2895,1264,1265,609,615,618,621,620,1266,2898,1604,1615,1632,1707,1067,1214,667,668,779,1218,629,794,795,796,630,1066,1213,1706,1712,1715] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [917,645,647,648,889,1713,1714,1715,1728,1729,1731,1736,1737,1730,913,914,915,916,918,919,629,795,796,812,630,633,637,638,1861,1615,1605,1592,1593,1575,1576,1577,1867,621] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [5918,5904,5909,5913,5914,4432,4741,4418,4396,4397,4431,4390,4393,1328,1329,1330,5923,5929,5928,4356,6000,2818,2821,2809,2814,4420,2885,1254,1291,1288,1319,2803,2808,2798,1296,5932,5933,5993] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [3051,137,941,943,136,110,115,116,117,119,126,152,151,1012,971,980,981,935,936,938,3066] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [3787,3795,3797,4020,3962,4018,3946,4830,4831,4832,4016,3780,3783,3788,4816,4817] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [905,908,928,930,900,901,852,851,857,3038,3027,863,3026] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        