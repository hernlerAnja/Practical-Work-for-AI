
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
        
        load "data/Q12851.pdb", protein
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
 
        load "data/Q12851.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1131,1132,754,739,742,743,335,723,186,737,195,197,193,196,237,787,188,191,236,1209,350,473,1204,1206,1207,347,717,718,504,1211,1213,351,352,4641,4642,4637,4639,788,753,747,748,750,751,1155,184,167,183,185,258,738,4591,4608,4609,1108,1116,752,796,2294,2295,2293,2296,2301] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [4201,6195,6196,6197,6199,3824,3830,3836,6189,6191,6184,6210,4212,4214,6205,6207,6204,2724,2725,2726,5539,5873,6185,6201,6202,6203,5878,2749,5152,5153,5545,5159,5160,2742,4774,4189,4193,4195,4748,4756,4757,4760,4742,4765,4751,4761,4753] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [4656,4659,4660,4661,4360,4342,4396,4141,4132,4156,4159,4155,4157,4142,4574,4575,4158,4646,4572,4343,4340,4345,4346,4290] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [3896,4058,4442,4443,4473,4116,4117,4472,4405,4118,4432,4400,3873,3876,4403,4399,4401,4437,4438,4440,4416,3916,3934,3936,4031,4014,4025,4028,4059] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [6335,3765,3766,6354,6285,2604,6353,2582,6149,2537,2539,2540,2561,2510,2513,3768] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [1376,1392,1653,1678,4991,1677,1679,1641,1358,1097,1098,779,778,1391,808,1634,817,818] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [4343,4340,4345,4346,4322,4323,4675,4677,4290,4293,4306,4307,4156,4159,4155,4157,4158] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [5007,5009,4667,4991,4990,816,817,818,812,814,815,4631,4668,4626,4628,4622,4624,4614] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        