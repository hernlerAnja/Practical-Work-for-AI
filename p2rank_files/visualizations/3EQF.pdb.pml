
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
        
        load "data/3EQF.pdb", protein
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
 
        load "data/3EQF.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [465,836,835,463,464,1423,820,821,822,1259,712,713,833,834,840,445,860,304,856,859,711,720,725,723,640,641,617,718,316,323,1343,1344,315,322,301,307,313,302,346,347,348,306,308,309,909,305,1399,1401,1357,1360,1391,1393,1395,1397,1400,1424,1420,1422,1367,1428,1461,1462,1425,1205,1207,1243,1332,1339,1340,1345,1204,1337,1338,1234,1260,1335,1336,877,878,880,665,1347,1348,1353,1354,1355,1326,1206,1236,884,885,1508,1192,1193,1195,1356,1463,1464,1468] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.490,0.278,0.702]
select surf_pocket2, protein and id [696,698,1051,1296,2372,1074,1075,69,1024,1025,1045,2344,1021,1022,1023,2388,1020,1313] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.682]
select surf_pocket3, protein and id [1167,1170,666,1114,1148,632,1366,633] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.408,0.278]
select surf_pocket4, protein and id [897,899,900,901,933,934,1703,1704,1705,923,925,922,1231,1235,1228,1229,1230,1498,1499] 
set surface_color,  pcol4, surf_pocket4 
   
        
        deselect
        
        orient
        