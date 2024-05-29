
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
        
        load "data/8BJU.pdb", protein
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
 
        load "data/8BJU.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1211,1217,1233,1220,1221,1224,1225,1226,1074,1227,1248,394,364,367,368,389,391,395,1234,1236,425,426,427,1237,396,399,329,330,397,398,1102,1111,1112,1104,1090,1091,461,653,654,656,280,141,287,288,284,286,143,657,305,638,639,641,309,316,319,320,534,1130,1131,532,533,671,674,678,270,271,118,144,165,166,167,147,149,150,696,699,1126,1127,1128,1129,722,714,715,718,723,744,111,112,531,692,113,114,116,359,1249,1330] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.490,0.278,0.702]
select surf_pocket2, protein and id [1096,1097,1098,1584,757,1583,1362,733,736,756,1613,1602,1099,1103,1104,1089,735,1620,1614,1606,1607] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.682]
select surf_pocket3, protein and id [1282,1488,1489,1007,1008,1995,1996,1986,1989,2003,1496,1498,1499,1467,1490,1462,1281,1473,976] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.408,0.278]
select surf_pocket4, protein and id [846,848,1139,1154,1198,748,749,746,1174,1176,1178,880,778,780,779] 
set surface_color,  pcol4, surf_pocket4 
   
        
        deselect
        
        orient
        