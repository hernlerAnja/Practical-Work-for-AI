
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
        
        load "data/3B2V.pdb", protein
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
 
        load "data/3B2V.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4545,2190,2208,2217,356,2209,2210,4534,4536,4537,4542,4541,4561,212,657,362,365,355,214,203,215,4175,4176,4165,4533] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.310,0.702]
select surf_pocket2, protein and id [1306,910,831,834,1310,824,1302,1036,1422,1026,1060,1223,1224,1225,1226,1088,1289,1291,1238,1258,1267,1264,1286,1266,1227,842,843,1230,1081,1082] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.498,0.361,0.902]
select surf_pocket3, protein and id [2179,4567,1815,2180,4560,2220,652,2226,4566,690,2237,1670,1671,1673,1675,4363,2188] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.525,0.278,0.702]
select surf_pocket4, protein and id [1023,1026,1020,916,920,1211,1212,909,1222,1226,1214,1087,1213,1015,921,1317,1310,824,1306,910] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.851,0.361,0.902]
select surf_pocket5, protein and id [3660,3664,3931,3678,3915,4151,4139,4142,4143,4149,1651,3948,3947,2203,1640,3509,3512,3508,3661,3663,3665] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.600]
select surf_pocket6, protein and id [914,2756,829,2403,2401,2447,929,810,2743,928,913,919,922,926,915] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.596]
select surf_pocket7, protein and id [4549,4552,197,198,211,213,661,4572,663,183,185,187,188,193,669,16,178,4579,4591,4598,4607,177,179,4597,4599,4431,4432] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.325]
select surf_pocket8, protein and id [4770,4051,4052,4054,4277,4781,4782,4755,4772,4010,4009,4011,4021,4024,4262,4264,4050] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.478,0.361]
select surf_pocket9, protein and id [738,742,750,547,92,127,612,530,142,610] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.510,0.278]
select surf_pocket10, protein and id [1659,1661,1612,1613,1615,1614,1617,1618,1689,1688,1448,2171,1599] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.831,0.361]
select surf_pocket11, protein and id [5455,5429,5430,5432,5427,5428,5476,5514,5518,5503,5507,5508,5510,5511,5485,5488] 
set surface_color,  pcol11, surf_pocket11 
   
        
        deselect
        
        orient
        